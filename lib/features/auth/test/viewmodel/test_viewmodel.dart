import 'package:mobx/mobx.dart';
part 'test_viewmodel.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  String name(String name) {
    return 'Welcome $name';
  }

  void fetchAllData() {
    print('fetch data');
  }
}
