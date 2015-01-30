
module.exports = {

  options: {
    repeat: true
    repeatTimes: -1 # infinitely
    timeout: 4500 # ms
  }

  action: (session) ->
    session.send("Broadcast", {
      message: "My dog is blue"
      priority: 1 # low
    })
}