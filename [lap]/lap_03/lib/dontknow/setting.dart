//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

class Setting {
  String? theme;
  static final Setting _instance = Setting._();

  Setting._(){theme = 'Dark';}

  factory setting_2(String _theme) {
    _instance.theme = _theme;
  return _instance;
  }
}