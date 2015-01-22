###
This example is using mixed approach to the application. While loading packets from
the configuration files, it also uses $connection service to define routes and events.

@author Gelidus
###

Application = require('bluefire').Application

app = new Application(false) # client

# will try to find configurations, packets, controllers, models atc.
app.install (err, result) ->
  app.config ($connection, $router) ->

    $connection.on 'connect', (session) ->
      console.log 'connected'

    $router.route 'Ping', (session, data) ->
      session.send 'Ping', {
        value: data['value']
      }
    
  app.run 8888, '127.0.0.1'