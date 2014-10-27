# app/assets/ng-app/controllers/Page1Ctrl.js.coffee

# This is controller for Page 1 which displayes
# content of an addressbook model that's been preloaded with 
# the data provided by Rails controller

@addressbook.controller 'Page1Ctrl', ['$scope', ($scope) ->
	$scope.things = ['Angular', 'Rails 4.1', 'Working', 'Together!!']
]