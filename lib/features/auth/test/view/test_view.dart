import 'package:flutter/material.dart';
import 'package:flutter_application_template_mvvm/core/base/view/base_view.dart';

import '../viewmodel/test_viewmodel.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: TestViewModel(),
      onModelReady: (viewModel) {
        viewModel.fetchAllData();
      },
      onPageBuilder: (BuildContext buildContext, TestViewModel viewModel) =>
          Scaffold(),
    );
  }
}
