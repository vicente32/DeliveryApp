import 'package:flutter/material.dart';

//PAGES
import 'package:deliverys/src/pages/welcome_page.dart';
import 'package:deliverys/src/pages/login_page.dart';



final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage()
};
