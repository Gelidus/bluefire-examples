
module.exports = class PingController

  ###
  Inject services and models you need in the ping controller here
  ###
  constructor: () ->

  onPing: (session, data) ->
    # do something with data that was received from session
    session.send("Ping", { value: data["value"] } )
    console.log("Accepted ping from client, sending back! value[#{data["value"]}]")