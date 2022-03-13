import 'package:flutter/material.dart';
import '../../constants/navigation/navigation_constants.dart';
import '../../../features/test/view/test_view.dart';

class NavigationRoute {
  static final NavigationRoute? _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance!;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.TEST_VIEW:
        return normalNavigate(TestView());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Text("not found"),
          ),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
