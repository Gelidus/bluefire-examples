Session = require("bluefire").Session

# this session will be extended by bluefire session on install
module.exports = class ClientSession extends Session

  constructor: () ->
    super()

    @authenticated = false
    @id = 0