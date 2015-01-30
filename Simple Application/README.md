## Example: Simple Application

About:
- This example shows how to use basic features of [Bluefire](https://github.com/Gelidus/bluefire) framework
- app.config is synchronous injected function (although it has callback)
- $connection service is used to register packets and session events
- $router service is used to register routes to the previously defined packets

Behaviour:
- If the server is running, any client connected will be "pinged" by "Ping" packet
- Client will response with the same packet
- Server will print it received the packet