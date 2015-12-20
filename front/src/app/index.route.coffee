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
        resolve:
          socket: (socketService, $localStorage, $state) ->
            socketService.connectWithAuth $localStorage.user?.token
            .then (socket) ->
              console.log "success!"
              return socket
            , (err) ->
              if err.type == "UnauthorizedError" or err.code == "invalid_token"
                console.log "failed!!"
                $state.go "login"

    $urlRouterProvider.otherwise '/'
