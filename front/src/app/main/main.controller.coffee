class MainController
  results = []
  count = 0

  constructor: (@User, @socket, @$state, $scope) ->
    $scope.$on "$destroy", =>
      @socket.disconnect()
      @socket.removeAllListeners()
    @results = results

  ping: ->
    @socket.emit "ping", "test!!", (data) ->
      results.push {count: ++count, data: data}

  logout: ->
    @User.discard()
    @$state.go "login"

angular.module "front"
  .controller "MainController", MainController
