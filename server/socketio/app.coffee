socketioJwt = require "socketio-jwt"
config = require "../config"

module.exports = exports = (server) ->
  io = require("socket.io") server
  io.use socketioJwt.authorize
    secret: config.secret
    handshake: true

  io.on "connection", (socket) ->
    console.log socket.decoded_token
    socket.on "ping", (data, fn) ->
      fn "pong: #{data}"
