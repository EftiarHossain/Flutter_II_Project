import 'package:flutter_driver/flutter_driver.dart';
//import 'package:test/test.dart';
import '../Object_repository/xpath_library.dart';
//import '../Object_repository/UIElementConstant.dart';


//Nevigate to Discover from Home

dynamic nevigateToDiscover(FlutterDriver driver) async {
  await driver.runUnsynchronized(() async {
    await driver.tap(discoverTab);
  });
}


dynamic influencerValidation(FlutterDriver driver) async {
  await driver.runUnsynchronized(() async {
    await driver.waitFor(influencer);
  });

}