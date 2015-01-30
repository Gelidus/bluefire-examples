
module.exports = class BroadcastController

  constructor: () ->

  onBroadcast: (session, data) ->
    console.log("#{data["userId"]}: #{data["message"]}")