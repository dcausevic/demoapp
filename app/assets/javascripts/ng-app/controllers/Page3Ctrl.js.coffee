# app/assets/ng-app/controllers/Page3Ctrl.js.coffee

# This is controller for Page 3 which displays
# form that allows us to add person addresses 
# to database through Rails API
@addressbook.controller 'Page3Ctrl', ['$scope', 'PeopleService', ($scope, PeopleService) ->
	$scope.peopleservice = new PeopleService()

	$scope.addPerson = ->
		$scope.peopleservice.create($scope.person)
		$scope.person = ''
]