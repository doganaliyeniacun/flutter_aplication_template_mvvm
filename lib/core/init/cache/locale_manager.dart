import 'package:flutter_application_template_mvvm/core/constants/enums/prefences_keys_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleManager {
  static final LocaleManager? _instance = LocaleManager._init();
  static LocaleManager get instance => _instance!;

  LocaleManager._init() {
    SharedPreferences.getInstance().then((value) => _preferences = value);
  }

  SharedPreferences? _preferences;

  static prefencesInit() async {
    if (_instance?._preferences == null) {
      _instance!._preferences = await SharedPreferences.getInstance();
    }
    return;
  }

  Future<void> setStringValue(PrefencesKeys key, String value) async {
    await _preferences!.setString(key.toString(), value);
  }

  String? getStringValue(PrefencesKeys keys) =>
      _preferences!.getString(keys.toString());
}
