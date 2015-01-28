ServerApplication = require("bluefire").ServerApplication

module.exports = class Application extends ServerApplication

  constructor: () ->
    super()

  run: () ->
    super()

  onConnect: (session) ->
    console.log("New session accepted!")
    # send ping packet
    session.send("Ping", { value: "Hello World!" } )