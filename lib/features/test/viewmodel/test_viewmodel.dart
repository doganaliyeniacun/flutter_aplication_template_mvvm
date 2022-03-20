
import 'package:flutter/cupertino.dart';
import '../../../core/constants/enums/app_theme_enum.dart';
import '../../../core/init/notifier/theme_notifier.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
part 'test_viewmodel.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  BuildContext? _context;

  void setContex(BuildContext context) {
    _context = context;
  }

  void changeDarkTheme() {    
    Provider.of<ThemeNotifier>(_context!,listen: false).changeTheme(AppThemes.DARK);
  }

  void changeLightTheme() {    
    Provider.of<ThemeNotifier>(_context!,listen: false).changeTheme(AppThemes.LIGHT);
  }

  void fetchAllData() {
    print('fetch data');
  }

  @observable
  String? name;

  @action
  void welcome() => name = userName('Ali');

  String userName(String name) {
    return 'Welcome $name';
  }
}
