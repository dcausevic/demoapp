# app/assets/ng-app/controllers/Page2Ctrl.js.coffee

# This is controller for Page 2 which displayes
# content of an addressbook model that's been fetched 
# from database by Rails API in JSON format
@addressbook.controller 'Page2Ctrl', ['$scope', 'PeopleService', ($scope, PeopleService) ->
	$scope.peopleservice = new PeopleService()
	$scope.people = $scope.peopleservice.all()
]