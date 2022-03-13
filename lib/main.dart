import 'package:flutter/material.dart';

import 'features/auth/test/view/test_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: TestView(),
    );
  }
}
