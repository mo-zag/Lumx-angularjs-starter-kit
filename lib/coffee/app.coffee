
whatIEatApp = angular.module 'whatIEatApp', ['lumx', 'ui.router']

#Routers
whatIEatApp.config ($stateProvider, $urlRouterProvider) ->
  #
  # For any unmatched url, redirect to /state1
  $urlRouterProvider.otherwise '/state1'
  #
  # Now set up the states
  $stateProvider.state('state1',
    url: '/state1'
    templateUrl: 'templates/index.html').state('state1.list',
    url: '/list'
    templateUrl: 'partials/state1.list.html'
    controller: ($scope) ->
      $scope.items = [
        'A'
        'List'
        'Of'
        'Items'
      ]
      return
  ).state('state2',
    url: '/state2'
    templateUrl: 'partials/state2.html').state 'state2.list',
    url: '/list'
    templateUrl: 'partials/state2.list.html'
    controller: ($scope) ->
      $scope.things = [
        'A'
        'Set'
        'Of'
        'Things'
      ]
      return
  return




whatIEatApp.controller 'actView', ($scope)->
	console.log ''


