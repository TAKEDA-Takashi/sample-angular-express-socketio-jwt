class LoginController
  constructor: (@$http) ->

  auth: ->
    @$http.post "http://localhost:3080/api/authenticate",
        username: @username
        password: @password
      .success (res) ->
        console.log res

angular.module "front"
  .controller "LoginController", LoginController
