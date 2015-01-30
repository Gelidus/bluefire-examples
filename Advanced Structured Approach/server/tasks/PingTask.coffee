
module.exports = {

  options: {
    repeat: true
    repeatTimes: -1 # infinitely
    timeout: 3000 # every 3 seconds
  }

  action: (session) ->
    session.send("Ping", { value: "abcd" })
}