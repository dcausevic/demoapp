# app/assets/javascripts/ng-app/app.js.coffee

# This line is related to our Angular app.
# This is basically how we tell Angular about
# the existence of our application.
@addressbook = angular.module('addressbook', ['ngRoute','templates'])

# This routing directive tells Angular about the 
# routes for our application. The term "otherwise" here
# stand for all other routes that are not defined yet
# in our application.
@addressbook.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/', {
      templateUrl: 'page1.html',
      controller: 'Page1Ctrl'
    }).
    otherwise({
      redirectTo: '/'
    }) 
])