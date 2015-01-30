
module.exports = class LoginController

  constructor: () ->
    @loginCounter = 0

  onLogin: (session, data) ->
    # check database here

    @loginCounter++

    session.id = @loginCounter
    session.userData = {
      name: data["name"]
      gender: data["gender"]
      age: data["age"]
    }

    session.send("Login", {
      success: 1
      id: @loginCounter
    })