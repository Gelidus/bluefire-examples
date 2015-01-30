###
  This module encapsulates configuration for each packet sent (protocol).
  It consists of 2 sub-namespaces (client and server packets)

  Head is first part of each packet, it must have conditionField in it.
  After that, you can set default values for previously defined fields.
  This means, when sending, you are not supposed to write all the fields,
  just that you want to change from defaults.
###
module.exports = {

  ###
  All fields from head packet will be in front of each packet, also,
  opcode here means conditionField (from parser config)
  ###
  Head: [
    opcode: "uint8"
  ]

  ###
  Namespace for packets that are sent from client
  ###
  ClientPackets: {
    Ping: [
      opcode: 0 # means default value of opcode for this packet is 0
    , value: "stringle"
    ]

    Login: [ # creates new user or logs in if exists
      opcode: 1
    , name: "stringle"
    , password: "stringle"
    , gender: "uint8" # 0 male, 1 female
    , age: "uint8"
    ]

    User: [ # getter for user
      opcode: 2
    , userId: "uint8"
    ]

    Broadcast: [
      opcode: 3
    , message: "stringle"
    , priority: "uint8"
    ]
  }

  ###
  Namespace for packets that are send from server
  ###
  ServerPackets: {
    Ping: [
      opcode: 0 # means default value of opcode for this packet is 0
    , value: "stringle"
    ]

    Login: [
      opcode: 1
    , success: "uint8"
    , id: "uint32le"
    ]

    User: [
      opcode: 2
    , name: "stringle"
    , gender: "uint8"
    , age: "uint8"
    ]

    Broadcast: [
      opcode: 3
    , userId: "uint32le"
    , message: "stringle"
    , priority: "uint8"
    ]
  }
}