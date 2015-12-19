jwt = require "jsonwebtoken"
express = require "express"

config = require "../config"

router = express.Router()

router.post "/authenticate", (req, res, next) ->
  user =
    username: req.body.username
    password: req.body.password

  if user.username == "madoka" and user.password == "magica"
    token = jwt.sign user, config.secret, expiresIn: "2h"
    user.token = token

    res.json(user)
  else
    res.sendStatus 401


module.exports = router
