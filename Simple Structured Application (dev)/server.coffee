Application = require('bluefire').Application

app = new Application()

app.install (err, res) ->

  app.config ($connection, $router) ->

    $connection.on 'connect', (session) ->
      console.log 'New client connected'

      session.send 'Ping', {
        value: 'hello world!'
      }

    $router.route 'Ping', (session, data) ->
      console.log "Got ping back from client, value: [#{data['value']}]"
    
  app.run 8888, '127.0.0.1'