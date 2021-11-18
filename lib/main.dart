import 'package:flutter/material.dart';
import 'package:myapp/design/theme.dart';
import 'package:myapp/routes/route_const.dart';
import 'package:myapp/screens/display.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/screens/signup.dart';
import 'package:myapp/screens/user_list.dart';
import 'preferences/shared_pref.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Ui screen',
      theme: basicTheme(),

      initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
      routes: {
        PageRoutes.splash: (ctx) => SplashScreen(),
        PageRoutes.login: (ctx) => Login(),
        PageRoutes.signup: (ctx) => SignUp(),
        PageRoutes.userlist: (ctx) => UserList(),
        PageRoutes.display: (ctx) => DisplayData(),
      },
      onUnknownRoute: (settings) {
        return new MaterialPageRoute(builder: (ctx) => Login());
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    doLogin();
    super.initState();
  }

  void doLogin() async {
    final token = await SharedPreferencesHelper().getAuthtoken();
    Future.delayed(Duration(seconds: 3), () {
      if (token != null && token.isNotEmpty) {
        Navigator.of(context).pushReplacementNamed(PageRoutes.userlist);
      } else {
        Navigator.of(context).pushNamed(PageRoutes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/images/login.JPG'),
        ),
      ),
    );
  }
}
