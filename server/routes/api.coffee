express = require "express"
router = express.Router()

router.post "/authenticate", (req, res, next) ->
  res.jsonp(req.body)

module.exports = router
