ClientApplication = require("bluefire").ClientApplication

module.exports = class Application extends ClientApplication

  constructor: () ->
    super()

  run: () ->
    super()

  onConnect: (session) ->
    console.log("New session accepted!")