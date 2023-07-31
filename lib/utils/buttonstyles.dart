import 'package:flutter/material.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  overlayColor: MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.hovered)) {
        return Colors.black; //<-- SEE HERE
      }
      return null; // Defer to the widget's default.
    },
  ),
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.black87),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
);
