angular.module "front"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "login",
        url: "/"
        templateUrl: "app/login/login.html"
        controller: "LoginController"
        controllerAs: "login"
      .state "main",
        url: "/main"
        templateUrl: "app/main/main.html"
        controller: "MainController"
        controllerAs: "main"

    $urlRouterProvider.otherwise '/'
