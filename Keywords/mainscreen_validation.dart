import 'package:flutter_driver/flutter_driver.dart';
//import 'package:test/test.dart';
import '../Object_repository/xpath_library.dart';
//import '../Object_repository/UIElementConstant.dart';


//Verify the element on main screen


dynamic homeScreenValidation(FlutterDriver driver) async {
  await driver.runUnsynchronized(() async {
    await driver.waitFor(titleLogo);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(homeTab);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(discoverTab);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(dropTab);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(accountTab);
  });


}