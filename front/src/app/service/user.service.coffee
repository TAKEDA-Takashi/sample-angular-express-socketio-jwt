class User
  constructor: (@$localStorage, @$http) ->
    @load()

  authentication: ->
    @$http.post "http://localhost:3080/api/authenticate",
        username: @username
        password: @password
      .success (data) =>
        @$localStorage.user = data
        @load()

  discard: ->
    delete @$localStorage.user.token
    @token = null

  load: ->
    angular.extend(@, @$localStorage.user)

angular.module "front"
  .service "User", User
