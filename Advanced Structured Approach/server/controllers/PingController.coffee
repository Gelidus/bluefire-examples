
module.exports = class PingController

  ###
  Inject services and models you need in the ping controller here
  ###
  consturctor: () ->

  onPing: (session, data) ->
    # do something with data that was received from session
    console.log("Got ping back from id[#{session.id}]! value[#{data["value"]}]")