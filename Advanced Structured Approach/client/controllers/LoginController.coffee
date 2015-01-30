
module.exports = class LoginController

  constructor: () ->

  onLogin: (session, data) ->
    success = !!data["success"]

    if success
      console.log("Successfully logged in! id: #{data["id"]}")
    else
      console.log("Log in refused by the server!")

    session.addTask("BroadcastTask")