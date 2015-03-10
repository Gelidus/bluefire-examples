###
  This module consists of services that should be created.
  You should register here your database connections, cache,
  helper services etc.

  These modules will be singletons in whole project. While
  injecting them, only the same instance will be passed each
  time.
###
module.exports = {

  disk: {
    adapter: "sails-disk"
  }
}