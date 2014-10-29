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
      templateUrl: 'content1.html',
      controller: 'Content1Ctrl'
    }).
    when('/page2', {
      templateUrl: 'content2.html',
      controller: 'Content2Ctrl'
    }).
    when('/page3', {
      templateUrl: 'content3.html',
      controller: 'Contentcd3Ctrl'
    }).
    otherwise({
      redirectTo: '/'
    }) 
])