ClientApplication = require("bluefire").ClientApplication

module.exports = class Application extends ClientApplication

  constructor: () ->
    super()

  run: () ->
    super()

  onConnect: (session) ->
    console.log("Connected!")

    session.send("Login", {
      name: "Gelidus"
      password: "mypassword"
      gender: 0
      age: 20
    })