import PackageDescription

let package = Package(
    name: "MQTTClient",
    dependencies:[
      .Package(url:"/home/josephbell/MQTT", majorVersion:0),
      .Package(url:"https://github.com/iachievedit/swiftlog", majorVersion:1)
    ]
)
