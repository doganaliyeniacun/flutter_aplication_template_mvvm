import 'package:flutter/material.dart';
import 'package:flutter_application_template_mvvm/core/extensions/string_extension.dart';

class LocaleText extends StatelessWidget {
  final String value;
  
  const LocaleText({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(value.locale);
  }
}
