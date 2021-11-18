import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/design/theme.dart';
import 'package:myapp/routes/route_const.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: height * 0.4,
                  child: Image.asset('assets/images/signup.JPG'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Sign up',
                      style: Theme.of(context).textTheme.headline5,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Or, register with email...',
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 20,
                ),
                signUpForm(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('validate');
                          }
                        },
                        child: Text('Register'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have account?',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PageRoutes.login);
                      },
                      child: Text(
                        'Signin',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Form signUpForm() {
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
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (text) {
              if (text!.isEmpty) {
                return "Enter valid password";
              }
              if (text.length < 5) {
                return 'Password must be greater than 5';
              }
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: FaIcon(FontAwesomeIcons.lock),
              ),
              hintText: 'Password',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (text) {
              if (text!.isEmpty) {
                return "Please enter your full name";
              }
              return null;
            },
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: FaIcon(FontAwesomeIcons.user),
              ),
              hintText: 'Full name',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (text) {
              if (text!.isEmpty) {
                return "Enter your company name";
              }
              return null;
            },
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: FaIcon(FontAwesomeIcons.building),
              ),
              hintText: 'Company name',
            ),
          ),
        ],
      ),
    );
  }
}
