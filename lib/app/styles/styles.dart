import 'package:flutter/material.dart';

const MaterialBannerAlertTextStyle = TextStyle(
  color: Color.fromARGB(255, 255, 17, 0),
  fontWeight: FontWeight.bold,
);

const MaterialBannerAlertBackgroundColor = Color.fromRGBO(255, 100, 100, 0.5);

InputDecoration SignUpFormStyle(IconData icon, String? hintText) {
  return InputDecoration(
      iconColor: Colors.white,
      icon: Icon(icon),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white),
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ));
}

ButtonStyle ElevatedButtonStyle(Color color) {
  return ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)));
}
