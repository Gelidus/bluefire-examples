
module.exports = class BroadcastController

  constructor: (@$connection) ->

  onBroadcast: (session, data) ->
    for user in @$connection.sessionStorage
      user.send("Broadcast", {
        userId: session.id
        message: data["message"]
        priority: data["priority"]
      })