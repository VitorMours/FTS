import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/login_form_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Expanded(
          flex: 1,
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/classroom.jpg"),
                      fit: BoxFit.cover)),
              child: null)),
      const Expanded(
          flex: 1,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Nome da Empresa")])),
                Gap(20),
                Expanded(flex: 4, child: LoginFormWidget())
              ]))
    ]));
  }
}
