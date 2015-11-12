## User Stories
1. User creates an account with an avatar
2. On their profile page they have the option to add a trip
3. When they add a trip they provide the number of days, total budget and the budget for their (hotel, food, activities, travel)
4. Then on the index page it will show how much the user can spend on each activity for that day
5. Every day it will update and adjust itself based on how much the user spent for that day
6. When a trip is over it will delete itself

## Routes:
1. GET "/users/new"
2. POST "/users"
3. POST "/sessions/new"
4. GET "/trips"
5. POST "/trips"
6. PUT "/trips"

##Pseudo Code
1. Make a function that takes the users budget
  function(budget) {
     divides it by the number of days, and returns the result
  }
2. Set the result as the average number per day
3. When the user inputs there expenses for the day there will be a function
      var diff = total - input;
      function(diff) {
        var new_average = diff / num of days
        reset variables
        days -= 1
      }
  4. if (days == 0) {
      toggle model to shown
    }
