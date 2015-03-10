###
This example is using mixed approach to the application. While loading packets from
the configuration files, it also uses $connection service to define routes and events.

@author Gelidus
###

Application = require('bluefire').ServerApplication

app = new Application()

# will try to find configurations, packets, controllers, models atc.
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