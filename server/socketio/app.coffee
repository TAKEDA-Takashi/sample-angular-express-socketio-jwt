module.exports = exports = (server) ->
  io = require("socket.io") server

  io.on "connection", (socket) ->
    socket.on "ping", (data, fn) ->
      console.log data
      fn "pong"
