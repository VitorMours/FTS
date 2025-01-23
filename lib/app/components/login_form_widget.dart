import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:frontend/app/styles/styles.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
      child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.person),
                  hintText: "Email"),
              validator: (value) {
                return null;
              },
            ),
            Gap(20),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.password_sharp),
                    hintText: "Password"),
                validator: (value) {
                  return null;
                }),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: Text("Não possui conta? Crie uma conta",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            decoration: TextDecoration.underline))),
              ],
            ),
            Gap(20),
            FilledButton(
              style: ElevatedButtonStyle(Colors.blueGrey),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context)
                      .showMaterialBanner(MaterialBanner(
                    backgroundColor: MaterialBannerAlertBackgroundColor,
                    actions: [
                      IconButton(
                          icon: Icon(Icons.close, color: Colors.red),
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          })
                    ],
                    content: Text("Login feito!",
                        style: MaterialBannerAlertTextStyle),
                  ));
                }
              },
              child: Text("Fazer login"),
            )
          ])),
    );
  }
}
