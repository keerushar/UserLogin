import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/design/theme.dart';
import 'package:myapp/preferences/api.dart';
import 'package:myapp/routes/route_const.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/login.JPG')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                formUi(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            ApiUser.loginUser();
                            Navigator.of(context)
                                .pushNamed(PageRoutes.userlist);
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Or, login with...',
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 20,
                ),
                signInWith(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to iThickLogistics?',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PageRoutes.signup);
                      },
                      child: Text(
                        'Register',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signInWith() {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: nowBox,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Image.asset('assets/images/google.png'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: nowBox,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Image.asset('assets/images/facebook.png'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: nowBox,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Image.asset('assets/images/apple.png'),
            ),
          ),
        ),
      ],
    );
  }

  Form formUi() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (text) {
              if (text!.isEmpty) {
                return "Enter Email Id";
              }
              if (!text.endsWith('.com') && (!text.contains('@'))) {
                return 'Enter valid email id';
              }
              return null;
            },
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: FaIcon(FontAwesomeIcons.at),
              ),
              hintText: 'Email ID',
            ),
          ),
          TextFormField(
            obscureText: true,
            validator: (text) {
              if (text!.isEmpty) {
                return "Enter valid password";
              }
              if (text.length < 5) {
                return 'Password must be greater than 5';
              }
              return null;
            },
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: FaIcon(FontAwesomeIcons.lock),
              ),
              hintText: 'Password',
              suffixIcon: Container(
                child: TextButton(
                    child: Text(
                      'Forget?',
                    ),
                    onPressed: () {}),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
