let data  = [25, 25 , 25, 25, 25];
let ctx = document.getElementById('mychart').getContext('2d');
let myChart = new Chart(ctx, {
  type:'pie',
  data: {
    labels: ['Population','Search Intrest','Area Income' ,'Competition', 'Saturation'],
    datasets:[{
      label: 'Potential',
      data: data,
      backgroundColor: [
        'rgba(75, 192, 192, 0.9)',
        'rgba(75, 192, 192, 0.9)',
        'rgba(75, 192, 192, 0.9)',
        'rgba(255, 99, 132, 0.9)',
        'rgba(255, 99, 132, 0.9)',
        'rgba(255, 159, 64, 0.5)'
    ],
    }]
  },
  options: {
    maintainAspectRatio: false
  }
})

$('#submit').on('click', getChartData)

async function getChartData(){
  let params = {
      addressId: $('#address-id').text()
  }
  Loader.open()
  let res = await axios.get('/api/chart-data', {params})
  let intrest = await getIntrestData()
  let data = res.data

  let newData = construct_new_data(data, intrest)

  Loader.close()
  addData(myChart, newData)
}

function addData(chart, newData) {
  chart.data.datasets[0].data = newData
  chart.update();
}

function construct_new_data(data, intrest=50) {
  let population = Math.max((data.density/588 * 35),0);
  let searchIntrest = intrest['today 1-m']/100 * 40;
  let income = data.income/75000 * 35;
  let competition = data.rating/5 * 25;
  let saturation = Math.max(( 30 - data.population_per_competitor/700 * 30),5);

  let total = population+searchIntrest+income+competition+saturation;
  let overallRating = (population/total*100)+(searchIntrest/total*100)+(income/total*100);
  $('#overall-rating').text(Math.round(overallRating))
  return [population,searchIntrest,income,competition,saturation]
}
async function getIntrestData(evt){
  let params = {
      sub_type: $('#sub_type').val(),
      state: $('#state').text()
  }
  console.log(params)
  let res = await axios.get('/api/search-intrest', {params})
  return res.data
}
