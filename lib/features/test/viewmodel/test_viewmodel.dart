import 'package:flutter/cupertino.dart';
import 'package:flutter_application_template_mvvm/core/base/model/base_view_model.dart';
import 'package:flutter_application_template_mvvm/core/init/network/network_manager.dart';
import 'package:flutter_application_template_mvvm/features/test/model/test_model.dart';
import '../../../core/constants/enums/app_theme_enum.dart';
import '../../../core/init/notifier/theme_notifier.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
part 'test_viewmodel.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    getData();
  }

  void changeDarkTheme() {
    Provider.of<ThemeNotifier>(context!, listen: false)
        .changeTheme(AppThemes.DARK);
  }

  void changeLightTheme() {
    Provider.of<ThemeNotifier>(context!, listen: false)
        .changeTheme(AppThemes.LIGHT);
  }


  @observable
  String? name;

  @action
  void welcome() => name = userName('Ali');

  String userName(String name) {
    return 'Welcome $name';
  }

  void getData() async {
    final list =
        await NetworkManager.instance.dioGet<TestModel>('posts', TestModel());
  }
}
