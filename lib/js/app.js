var whatIEatApp;

whatIEatApp = angular.module('whatIEatApp', ['lumx', 'ui.router']);

whatIEatApp.config(function($stateProvider, $urlRouterProvider) {
  $urlRouterProvider.otherwise('/state1');
  $stateProvider.state('state1', {
    url: '/state1',
    templateUrl: 'templates/index.html'
  }).state('state1.list', {
    url: '/list',
    templateUrl: 'partials/state1.list.html',
    controller: function($scope) {
      $scope.items = ['A', 'List', 'Of', 'Items'];
    }
  }).state('state2', {
    url: '/state2',
    templateUrl: 'partials/state2.html'
  }).state('state2.list', {
    url: '/list',
    templateUrl: 'partials/state2.list.html',
    controller: function($scope) {
      $scope.things = ['A', 'Set', 'Of', 'Things'];
    }
  });
});

whatIEatApp.controller('actView', function($scope) {
  return console.log('');
});
