angular.module "front"
  .factory "socket", (socketFactory) ->
    socketFactory
      ioSocket: io.connect ":3080"
