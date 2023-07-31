import 'package:flutter/material.dart';

import 'colors.dart';

TextField textFieldstyle = TextField(
    decoration: InputDecoration(
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColors.primary)),
  border: const OutlineInputBorder(),
));
