// import 'package:flutter/material.dart';
// import 'package:myapp/screens/display.dart';
// import 'package:myapp/screens/login.dart';
// import 'package:myapp/screens/signup.dart';
// import 'package:myapp/screens/user_list.dart';

// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     final arguments = settings.arguments;

//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(builder: (_) => Login());
//       case '/signup':
//         return MaterialPageRoute(builder: (_) => SignUp());
//       case '/userlist':
//         return MaterialPageRoute(builder: (_) => UserList());
//       case '/display':
//         return MaterialPageRoute(builder: (_) => DisplayData());
//       default:
//         return _errorRoute();
//     }
//   }

//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (_) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Error Route'),
//         ),
//         body: Text('Error'),
//       );
//     });
//   }
// }
