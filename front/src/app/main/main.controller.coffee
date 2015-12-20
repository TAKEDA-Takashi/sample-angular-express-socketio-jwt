class MainController
  constructor: (@User, @socket, @$state, $scope) ->
    $scope.$on "$destroy", => @socket.removeAllListeners()

  ping: ->
    @socket.emit "ping", "test!!", (data) ->
      console.log data

  logout: ->
    @User.discard()
    @$state.go "login"

angular.module "front"
  .controller "MainController", MainController
