
module.exports = class PingController

  ###
  Inject services and models you need in the ping controller here
  ###
  constructor: () ->

  onPing: (session, data) ->
    # do something with data that was received from session
    console.log("Accepted ping packet from client!")