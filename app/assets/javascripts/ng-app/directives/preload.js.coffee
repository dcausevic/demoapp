# app/assests/javascfipts/ng-app/directives/preload.js.coffee

# @ngdoc directive
# @name addressbook.preloadResource 
# @description 
# This directive is used to bootstrap/preload data resources
# from the server via initial HTML sent by Rails.
# It reads JSON structure into the preloadResource variable
# on the scope, and removes the element from the DOM 
# to clean-up the final HTML.
@addressbook.directive 'preloadResource', () ->
    link: (scope, element, attrs) ->
        scope.preloadResource = JSON.parse(attrs.preloadResource)
        element.remove()