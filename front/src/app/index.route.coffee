angular.module "front"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "login",
        url: "/"
        templateUrl: "app/login/login.html"
        controller: "LoginController"
        controllerAs: "login"

    $urlRouterProvider.otherwise '/'
