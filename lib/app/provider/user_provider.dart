import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String name;
  String surname;
  String email;
  String password;

  UserProvider(
      {this.name = "", this.surname = "", this.email = "", this.password = ""});

  void changeName(String name) {
    this.name = name;
  }

  void changeSurname(String surname) {
    this.surname = surname;
  }

  void changeEmail(String email) {
    this.email = email;
  }

  void changePassword(String password) {
    this.password = password;
  }
}
