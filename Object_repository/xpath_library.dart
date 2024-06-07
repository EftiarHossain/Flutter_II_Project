import 'package:flutter_driver/flutter_driver.dart';

//Signup screen
final loginLink = find.byValueKey("login_label");


//Login screen
final loginTitle = find.byValueKey("login_label");
final emailField = find.byValueKey("email_textfield");
var passField = find.byValueKey("password_textfield");
final loginBtn = find.byValueKey("login_button");
var errorAlert = find.byValueKey("");

//Home screen
final titleLogo = find.byValueKey("");
final homeTab = find.byValueKey("");
final discoverTab = find.byValueKey("");
final dropTab = find.byValueKey("");
final accountTab = find.byValueKey("");

//Discover feed screen
final influencer = find.byValueKey("");