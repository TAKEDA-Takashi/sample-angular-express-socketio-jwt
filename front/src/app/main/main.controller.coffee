class MainController
  constructor: (@$localStorage) ->
    console.log @$localStorage.user


angular.module "front"
  .controller "MainController", MainController
