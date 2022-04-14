import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0, bottom: 8.0),
                      child: TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Email",
                          labelText: "Email",
                          icon: Icon(Icons.email),
                          border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'e-mail cannot be empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                )),
                Container(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Username",
                          labelText: "Username",
                          icon: Icon(Icons.people),
                          border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'username cannot be empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                )),
                Container(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: new InputDecoration(
                          labelText: "Password",
                          icon: Icon(Icons.lock),
                          border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'password cannot be empty';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                )),
                RaisedButton(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/notifsignup');
                    }
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Already have an Account? ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: "Sign In",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
