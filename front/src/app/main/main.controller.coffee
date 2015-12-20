class MainController
  constructor: (@$localStorage, @$state, $scope, @socket) ->
    $scope.$on "$destroy", => @socket.removeAllListeners()

  ping: ->
    @socket.emit "ping", "test!!", (data) ->
      console.log data

  logout: ->
    delete @$localStorage.user
    @$state.go "login"

angular.module "front"
  .controller "MainController", MainController
