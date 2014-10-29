# app/assests/javascfipts/ng-app/services/people.js.coffee

# @ngdoc service 
# @name addressbook.PeopleService 
# @description 
# Factory in the addressbook for accessing API.
@addressbook.factory 'PeopleService', ($resource) ->
    class PeopleService 
      constructor: () ->
        @service = $resource('http://localhost:3000/api/people/:id.json', {id: '@id'}) 
      create: (attrs) ->
        new @service(person: attrs).$save (person) ->
          attrs.id = person.id 
          attrs 
      all: ->
        @service.query()