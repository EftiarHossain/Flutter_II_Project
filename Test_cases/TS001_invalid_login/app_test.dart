import 'package:flutter_driver/flutter_driver.dart';
import '../../Keywords/login_test.dart' as loginTest;
import '../../Keywords/common_methods.dart' as commonMethod;
import 'package:test/test.dart';

void main(){
  group('flutter test',()
  {
    late FlutterDriver driver;

    setUpAll(() async{
      driver = await FlutterDriver.connect();
    });

    test('Health Check', () async{
      await commonMethod.healthCheck(driver);
    });

    test('open app', () async{
      await commonMethod.openApp(driver);
    });

    test('Nevigate to login', () async{
      await loginTest.nevigateToLogin(driver);
    });

    test('login using valid credential', () async{
      await loginTest.invalidLogin(driver);
    });

    tearDownAll(() async {
      if (driver != null){
        await driver.close();
      }
    });

  });
}