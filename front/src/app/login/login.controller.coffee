class LoginController
  constructor: (@$http, @$localStorage, @$state) ->

  auth: ->
    @$http.post "http://localhost:3080/api/authenticate",
        username: @username
        password: @password
      .success (data) =>
        @$localStorage.user = data
        @$state.go "main"

angular.module "front"
  .controller "LoginController", LoginController
