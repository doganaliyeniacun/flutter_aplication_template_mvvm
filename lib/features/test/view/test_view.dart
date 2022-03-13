import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/base/view/base_view.dart';
import '../../../core/components/text/locale_text.dart';
import '../../../core/init/lang/language_manager.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../viewmodel/test_viewmodel.dart';

class TestView extends StatelessWidget {
  bool checkLocale = false;

  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: TestViewModel(),
      onModelReady: (viewModel) {
        viewModel.setContex(context);
        viewModel.fetchAllData();
      },
      onPageBuilder: (BuildContext buildContext, TestViewModel viewModel) =>
          Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              LocaleText(value: LocaleKeys.welcome),
              Observer(
                builder: (_) {
                  return Text(
                    viewModel.name.toString(),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () => viewModel.welcome(),
                child: const Text("data"),
              ),
              ElevatedButton(
                onPressed: () {
                  checkLocale = !checkLocale;
                  checkLocale
                      ? context.setLocale(LanguageManager.instance.trLocale)
                      : context.setLocale(LanguageManager.instance.enLocale);
                },
                child: const Text("change language"),
              ),
              ElevatedButton(
                onPressed: () => viewModel.changeDarkTheme(),
                child: const Text("Change Dark Theme"),
              ),
              ElevatedButton(
                onPressed: () => viewModel.changeLightTheme(),
                child: const Text("Change Light Theme"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
