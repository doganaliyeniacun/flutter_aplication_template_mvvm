import 'package:mobx/mobx.dart';
part 'test_viewmodel.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
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
