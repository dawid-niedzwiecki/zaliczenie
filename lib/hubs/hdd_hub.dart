import 'package:shared_preferences/shared_preferences.dart';

class HddHub {
  HddHub._internal();

  factory HddHub() {
    return _hddRepository;
  }

  static final HddHub _hddRepository = HddHub._internal();

  late SharedPreferences _prefs;

  Future<void> initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences get prefs => _prefs;
}