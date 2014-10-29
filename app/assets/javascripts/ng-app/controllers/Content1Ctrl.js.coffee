# app/assets/ng-app/controllers/Content1Ctrl.js.coffee

# This is controller for Content Area 1 which displayes
# content of an addressbook model that's been preloaded with 
# the data provided by Rails controller
@addressbook.controller 'Content1Ctrl', ['$scope', ($scope) ->
	$scope.people = $scope.preloadResource
]