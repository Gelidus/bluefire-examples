Session = require("bluefire").Session

# this session will be extended by bluefire session on install
module.exports = class ClientSession extends Session

  constructor: (socket, parser) ->
    @authenticated = false
    @id = 0
    super(socket, parser)