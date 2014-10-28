# app/assets/javascripts/ng-app/app.js.coffee

# This is main router that ma[s] client side
# routes to appropriate controller and views

# This line is related to our Angular app.
# This is basically how we tell Angular about
# the existence of our application.
@addressbook = angular.module('addressbook', ['ngRoute','ngResource','templates'])

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
    when('/page2', {
      templateUrl: 'page2.html',
      controller: 'Page2Ctrl'
    }).
    when('/page3', {
      templateUrl: 'page3.html',
      controller: 'Page3Ctrl'
    }).
    otherwise({
      redirectTo: '/'
    }) 
])