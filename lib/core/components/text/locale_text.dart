// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_template_mvvm/core/extensions/string_extension.dart';

class LocaleText extends StatelessWidget {
  final String value;
  
  LocaleText({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(value.locale);
  }
}
