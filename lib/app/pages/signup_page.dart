import 'package:flutter/material.dart';

import '../components/signup_form_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(20),
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back,
                                    color: Colors.white)),
                          ])),
                  Expanded(flex: 9, child: SignupFormWidget())
                ]))),
        Expanded(flex: 1, child: Column())
      ]),
    );
  }
}
