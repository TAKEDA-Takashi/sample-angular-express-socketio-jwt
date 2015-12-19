class MainController
  constructor: (@$localStorage, @socket) ->
    console.log @$localStorage.user

  ping: ->
    @socket.emit "ping", "test!!", (data) ->
      console.log data


angular.module "front"
  .controller "MainController", MainController
