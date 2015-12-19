module.exports = exports = (server) ->
  io = require("socket.io") server

  io.on "connection", (socket) ->
    console.log "connection", socket.id
    socket.emit "ok"
