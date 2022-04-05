import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get heightLow => mediaQuery.size.height * 0.01;
  double get heightNormal => mediaQuery.size.height * 0.02;
  double get heightMedium => mediaQuery.size.height * 0.04;
  double get heightHigh => mediaQuery.size.height * 0.1;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(heightLow);
  EdgeInsets get paddingNormal => EdgeInsets.all(heightNormal);
  EdgeInsets get paddingMedium => EdgeInsets.all(heightMedium);
  EdgeInsets get paddingHigh => EdgeInsets.all(heightHigh);
}
