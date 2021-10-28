Deployed Url- 'https://capstone-beta.herokuapp.com/'

Summary- This website is designed to assist users with selecting a location for their new business. Data offered includes income data, population data, search interest data based on user-selected keywords, competition saturation. All of this data is analyzed to offer an overall rating.

Features- Location search is implemented to allow users to intuitively select a location with a standard street address. Based on the address, with the use of google maps API, data on 'Places'(restaurant establishments) within a radius are gathered and data is compiled into an easy-to-read format. Also with the address, the US Census statistics are queried to display population data and income data in the given area. A keyword can be input to make an API call to Google trends API to get search interest over the past year displayed as either a line chart or as part of the overall rating pie graph.

User flow- A user will start by making an account with a username, email, and password. From the 'New Search' page, an address can be inputted using the street address, city, and state of location. On the server-side google maps API will be called to return all restaurant locations within a 3000-meter radius and this result will be saved to the database. The 'Potential analysis' page will display basic location details and prompt for a subtype for the restaurant subtype to populate the 'Overall rating', portrayed as a rating number and a pie chart to see the individual factors contributing to the score. 'More information' page can be accessed via button and will display more detailed data on the same categories, in addition, google trends can again be used with a line graph to display the data over three timeframes, 12 months, 3 months, and 1 month. 'Competition Data' page can be opened via link to show all competitors associated with the address provided according to the return from google maps API, data shown is such as name, 'Price level', 'Overall Rating', 'Ratings Count' and any associated 'types'.

Tech Stack- The server side is Python. The front end is, Javascript, Html, CSS, and bootstrap. The database is Postgresql based.
