import 'package:flutter/material.dart';
import 'package:form_login/Screen/ForgotPassword.dart';
import 'package:form_login/Screen/LoginScreen.dart';
import 'package:form_login/Screen/RegisterScreen.dart';
import 'package:form_login/Screen/NotifComplete.dart';
import 'package:form_login/Screen/NotifForgot.dart';
import 'package:form_login/Screen/NotifSignUp.dart';
import 'package:form_login/Screen/ResetPassword.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case '/forgot':
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case '/reset':
        return MaterialPageRoute(builder: (_) => ResetPassword());
      case '/notifforgot':
        return MaterialPageRoute(builder: (_) => NotifForgot());
      case '/notifsignup':
        return MaterialPageRoute(builder: (_) => NotifSignUp());
      case '/notifreset':
        return MaterialPageRoute(builder: (_) => NotifReset());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }
}
