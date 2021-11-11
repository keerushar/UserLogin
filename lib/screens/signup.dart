import 'package:flutter/material.dart';
import 'package:myapp/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset('assets/images/signup.JPG'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Google tap');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: 45,
                      width: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Image.asset('assets/images/google.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: GestureDetector(
                      onTap: () {
                        print('Facebook tap');
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 45,
                        width: 70,
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Image.asset('assets/images/facebook.png'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    height: 45,
                    width: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Image.asset('assets/images/apple.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Or, register with email...',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
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
                          prefixIcon:
                              Icon(Icons.supervised_user_circle_outlined),
                          hintText: 'Email ID'),
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
                          prefixIcon:
                              Icon(Icons.supervised_user_circle_outlined),
                          hintText: 'Password'),
                    ),
                    TextFormField(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Please enter your full name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.supervised_user_circle_outlined),
                          hintText: 'Full Name'),
                    ),
                    TextFormField(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "Enter your company name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.supervised_user_circle_outlined),
                          hintText: 'Company Name'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
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
            ],
          ),
        ),
      ),
    );
  }
}
