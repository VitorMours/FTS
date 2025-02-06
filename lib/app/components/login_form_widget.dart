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
  final credentialController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    credentialController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
      child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              controller: credentialController,
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
                controller: passwordController,
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
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (credentialController.text == "admin" &&
                      passwordController.text == "admin") {
                    ScaffoldMessenger.of(context)
                        .showMaterialBanner(MaterialBanner(
                      backgroundColor: MaterialBannerSuccessBackgroundColor,
                      actions: [
                        IconButton(
                            icon: Icon(Icons.close, color: Colors.green),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .clearMaterialBanners();
                            })
                      ],
                      content: Text("Login feito con sucesso!",
                          style: MaterialBannerSuccessTextStyle),
                    ));
                    await Future.delayed(Duration(seconds: 2));
                    Navigator.pushNamed(context, "/home");
                  } else {
                    ScaffoldMessenger.of(context)
                        .showMaterialBanner(MaterialBanner(
                      backgroundColor: MaterialBannerAlertBackgroundColor,
                      actions: [
                        IconButton(
                            icon: Icon(Icons.close, color: Colors.red),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .clearMaterialBanners();
                            })
                      ],
                      content: Text("Error in the credentials for login.",
                          style: MaterialBannerAlertTextStyle),
                    ));
                  }
                }
              },
              child: Text("Fazer login"),
            )
          ])),
    );
  }
}
