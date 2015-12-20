class SokcetService
  constructor: (@socketFactory, @$q) ->

  connectWithAuth: (token) ->
    deferred = @$q.defer()

    conn = io.connect ":3080",
      query: "token=#{token}"
      "force new connection": true

    conn.on "connect", ->
      deferred.resolve(socket)
    .on "error", (err) ->
      deferred.reject(err)

    socket = @socketFactory
      ioSocket: conn

    return deferred.promise

angular.module "front"
  .service "socketService", SokcetService
