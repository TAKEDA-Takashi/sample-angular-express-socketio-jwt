class LoginController
  constructor: (@User, @$state) ->

  auth: ->
    @User.authentication()
      .success => @$state.go "main"

angular.module "front"
  .controller "LoginController", LoginController
