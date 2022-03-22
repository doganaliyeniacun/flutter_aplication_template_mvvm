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
  TestViewModel? viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: TestViewModel(),
      onModelReady: (model) {
        viewModel?.init();
      },
      onPageBuilder: (BuildContext buildContext, TestViewModel value) {
        viewModel = value;
        value.setContext(buildContext);

        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Column(
              children: [
                localizationText(),
                mobxText(),
                changeMobxValue(),
                localizationChangeButton(context),
                darkButton(),
                lightButton(),
              ],
            ),
          ),
        );
      },
    );
  }

  ElevatedButton lightButton() {
    return ElevatedButton(
      onPressed: () => viewModel!.changeLightTheme(),
      child: const Text("Change Light Theme"),
    );
  }

  ElevatedButton darkButton() {
    return ElevatedButton(
      onPressed: () => viewModel!.changeDarkTheme(),
      child: const Text("Change Dark Theme"),
    );
  }

  ElevatedButton localizationChangeButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        checkLocale = !checkLocale;
        checkLocale
            ? context.setLocale(LanguageManager.instance.trLocale)
            : context.setLocale(LanguageManager.instance.enLocale);
      },
      child: const Text("change language"),
    );
  }

  ElevatedButton changeMobxValue() {
    return ElevatedButton(
      onPressed: () => viewModel!.welcome(),
      child: const Text("data"),
    );
  }

  Observer mobxText() {
    return Observer(
      builder: (_) {
        return Text(
          viewModel!.name.toString(),
        );
      },
    );
  }

  LocaleText localizationText() => LocaleText(value: LocaleKeys.welcome);
}
