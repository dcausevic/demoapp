# app/assets/ng-app/controllers/Content3Ctrl.js.coffee

# This is controller for Content Area 3 which displays
# form that allows us to add person addresses 
# to database through Rails API
@addressbook.controller 'Content3Ctrl', ['$scope', 'PeopleService', ($scope, PeopleService) ->
	$scope.peopleservice = new PeopleService()

	$scope.addPerson = ->
		$scope.peopleservice.create($scope.person)
		$scope.person = ''
]