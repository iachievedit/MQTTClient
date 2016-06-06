//
// Copyright 2016 iAchieved.it LLC
//
// MIT License (https://opensource.org/licenses/MIT)
//

import swiftlog
import Glibc

guard Process.arguments.count == 2 else {
  print("Usage:  MQTTClient temperature, where -20 <= temperature <= 50")
  exit(-1)
}

let temperature = Process.arguments[1]

slogLevel = .Verbose

SLogVerbose("Changing temperature on http://test.mosquitto.org/gauge/ to \(temperature)")

let client = Client(clientId:"temperature")
client.host = "test.mosquitto.org"
client.port = 1883

guard client.connect() else {
  SLogError("Unable to connect to test.mosquitto.org")
  exit(-1)
}

let _ = client.publish(topic:"temp/random", withString:temperature)
let _ = client.disconnect()

select(0, nil, nil, nil, nil)
