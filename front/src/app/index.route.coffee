angular.module "front"
  .config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise '/'
