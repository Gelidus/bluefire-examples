
module.exports = class PingController

  ###
  Inject services and models you need in the ping controller here
  ###
  constructor: () ->

  onPing: (session, data) ->
    # do something with data that was received from session
    console.log("Got ping packet, sending back! value[#{data["value"]}]")
    # send back same ping
    session.send("Ping", data)