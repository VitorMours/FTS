import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:frontend/app/styles/styles.dart';

class SignupFormWidget extends StatefulWidget {
  const SignupFormWidget({super.key});

  @override
  State<SignupFormWidget> createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<SignupFormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: SignUpFormStyle(Icons.person, "Insira seu nome"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Por favor, coloque alguem valor, em vez de deixar vazio";
                }
                return null;
              }),
          Gap(15),
          TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: SignUpFormStyle(
                  Icons.family_restroom, "Insira seu sobrenome"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Por favor, coloque o nome do seu sobrenome por favor";
                }
                return null;
              }),
          Gap(15),
          TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: SignUpFormStyle(Icons.email, "Insira seu email"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Por favor, coloque seu email dentro do campo";
                }
                return null;
              }),
          Gap(15),
          TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: SignUpFormStyle(Icons.password, "Insira a sua senha"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Por favor, insira uma senha";
                }
                return null;
              }),
          Gap(15),
          TextFormField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration:
                  SignUpFormStyle(Icons.repeat, "Digite novamente a sua senha"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Por favor, coloque a mesma coisa que voce colocou no campo de senha";
                }
                return null;
              }),
          Gap(30),
          FilledButton(
              style: ElevatedButtonStyle(Colors.white),
              child: Text("Fazer Sign up",
                  style: TextStyle(color: Colors.blueAccent)),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // TODO: Resolver para o service por meio do repository,
                  // enviar os dados pro back-end processar

                  ScaffoldMessenger.of(context)
                      .showMaterialBanner(MaterialBanner(
                    content: Text("Sign up feito com sucesso"),
                    actions: [
                      IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          })
                    ],
                  ));
                }
              })
        ]));
  }
}
