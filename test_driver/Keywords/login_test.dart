import 'package:flutter_driver/flutter_driver.dart';
//import 'package:test/test.dart';
import '../Object_repository/xpath_library.dart';
import '../Object_repository/UIElementConstant.dart';

//Clicking 'Login' link from signup screen
//verify login screen
//Login with valid password
//Verify the login successful

dynamic nevigateToLogin(FlutterDriver driver) async {
  await driver.runUnsynchronized(() async {
    await driver.tap(loginLink);
  });
}

dynamic validLogin(FlutterDriver driver) async {
  await driver.runUnsynchronized(() async{
    await driver.waitFor(loginTitle);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(emailField);
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(emailField);
  });
  await driver.runUnsynchronized(() async{
    await driver.enterText(sendValidEmailAddress);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(passField);
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(passField);
  });
  await driver.runUnsynchronized(() async{
    await driver.enterText(sendValidPassword);
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(loginBtn);
  });
  /* await driver.runUnsynchronized(() async{
    await driver.waitFor(titleLogo);
  }); */

}

dynamic invalidLogin(FlutterDriver driver) async {
  await driver.runUnsynchronized(() async{
    await driver.waitFor(loginTitle);
  });
  await driver.runUnsynchronized(() async{
    await driver.waitFor(emailField);
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(emailField);
  });
  await driver.runUnsynchronized(() async{
    await driver.enterText(sendInValidEmailAddress);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(passField);
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(passField);
  });
  await driver.runUnsynchronized(() async{
    await driver.enterText(sendInValidPassword);
  });
  await driver.runUnsynchronized(() async {
    await driver.waitFor(loginBtn);
  });
  await driver.runUnsynchronized(() async {
    await driver.tap(loginBtn);
  });
  /* await driver.runUnsynchronized(() async{
    await driver.waitFor(errorAlert);
  }); */
  /* await driver.runUnsynchronized(() async{
    expect(await driver.getText(counterfield), '');
  }); */
}