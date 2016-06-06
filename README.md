# MQTTClient
An Example MQTT Client

Note: This example is on the bleeding edge of Swift 3.0 on Linux.  To get started with Swift 3.0 you can either
pull down the latest DEVELOPMENT-SNAPSHOT from [Apple] (https://swift.org/download/#snapshots), or obtain Swift 3.0 from
the [iAchieved.it Ubuntu repository](http://dev.iachieved.it/iachievedit/introducing-swift-3-0/).

```
# git clone https://github.com/iachievedit/MQTTClient
# cd MQTTClient
# swift build
# .build/debug/MQTTClient
Usage:  MQTTClient temperature, where -20 <= temperature <= 50
```

The MQTT client will `CONNECT` to the test broker at http://test.mosquitto.org and `PUBLISH` a message to the topic `temp/random` as described at http://test.mosquitto.org/gauge/.  The temperature provided on the command line should then be reflected on the gauge.

### About
This client makes use of a [Swift port of MQTT](https://github.com/iachievedit/MQTT).  This example should be considered experimental as both it and the MQTT library are based upon Swift 3.0.

### Twitter
@iachievedit
