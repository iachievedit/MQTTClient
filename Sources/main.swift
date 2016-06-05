//
// Copyright 2016 iAchieved.it LLC
//
// MIT License (https://opensource.org/licenses/MIT)
//

import swiftlog
import Glibc

slogLevel = .Verbose

let client = Client(clientId:"temperature")
client.host = "test.mosquitto.org"
client.port = 1883

guard client.connect() else {
  SLogError("Unable to connect to test.mosquitto.org")
  exit(-1)
}

let _ = client.publish(topic:"temp/random", withString:"0")
let _ = client.disconnect()

select(0, nil, nil, nil, nil)
