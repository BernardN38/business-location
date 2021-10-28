$('#intrest_search').on('click', getIntrestData)
let progressBar = $("#progress")

async function getIntrestData(evt){
    evt.preventDefault()
    let id = animate()
    let params = {
        sub_type: $('#sub_type').val(),
        state: $('#state').data('abbrev')
    }
    let res = await axios.get('/api/search-intrest', {params})
    clearInterval(id)
    progressBar.css('width', 100 + '%')
    progressBar.attr('aria-valuenow', 100)
    let newData = []

    for (let score in res.data ){
        newData.push(res.data[score])
    }
    addData(myChart, newData)
}

function addData(chart, newData) {
    chart.data.datasets[0].data = newData
    chart.update();
}

function animate(){
    let progressBar = $("#progress");
    let progressNumber = 0;
    return setInterval(function(){
        progressNumber++;
        progressBar.css('width', progressNumber + '%')
        progressBar.attr('aria-valuenow', progressNumber)
    }, 150)
}



let data  = [0, 0, 0, 0]
let ctx = document.getElementById('mychart').getContext('2d')
let myChart = new Chart(ctx, {
  type:'line',
  data: {
    labels: ['-5y','-12m','-3m' ,'-1m'],
    datasets:[{
      label: 'Search Intrest',
      data:data,
      backgroundColor: [
        'rgba(75, 192, 192, 0.9)',
        'rgba(75, 192, 192, 0.9)',
        'rgba(75, 192, 192, 0.9)',
        'rgba(255, 99, 132, 0.9)',
        'rgba(255, 99, 132, 0.7)',
        'rgba(255, 159, 64, 0.5)'
    ],
    }]
  },
  options: {
    scales: {
        yAxes: [{
            ticks: {
                beginAtZero: true,
                max:100
                   },
            }]
    },
    maintainAspectRatio: false
  }
})

