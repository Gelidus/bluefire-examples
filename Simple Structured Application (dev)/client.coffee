Application = require('bluefire').Application

app = new Application(false) # client

app.install (err, result) ->

  app.config ($connection, $router) ->

    $connection.on 'connect', (session) ->
      console.log 'connected'

    $router.route 'Ping', (session, data) ->
      session.send 'Ping', {
        value: data['value']
      }
    
  app.run 8888, '127.0.0.1'