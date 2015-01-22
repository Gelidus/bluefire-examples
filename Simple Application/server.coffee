Application = require('bluefire').Application

app = new Application()

app.config ($connection, $router) ->

  $connection.headPacket [
    opcode: 'uint8'
  ]

  # register client ping packet
  $connection.packet 'Ping', false, [
    opcode: 0
  , value: 'stringle'
  ]

  # register also server packet (sent from server)
  $connection.packet 'Ping', true, [
    opcode: 0
  , value: 'stringle'
  ]

  $connection.on 'connect', (session) ->
    console.log 'New client connected'

    session.send 'Ping', {
      value: 'hello world!'
    }

  $router.route 'Ping', (session, data) ->
    console.log "Got ping back from client, value: [#{data['value']}]"
  
app.run 8888, '127.0.0.1'