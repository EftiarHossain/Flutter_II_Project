import 'package:flutter_driver/flutter_driver.dart';
import 'package:meta/meta.dart';
//import 'package:test/test.dart';

Future<FlutterDriver> setupAndSetDriver() async{
  FlutterDriver driver = await FlutterDriver.connect();
  var connected = false;
  while (!connected){
    try {
      await driver.waitUntilFirstFrameRasterized();
      connected = true;
    }
    catch (error){}
  }
  return driver;
}

void justWait({@required numberOfSeconds}) async {
  await Future.delayed(Duration(seconds: numberOfSeconds));
}

dynamic openApp(FlutterDriver driver) async {
  await driver.runUnsynchronized(() async{
     justWait(numberOfSeconds : 5);
  });
}

//flutter health check
dynamic healthCheck(FlutterDriver driver) async {
    Health health = await driver.checkHealth();
      print(health.status);
}


