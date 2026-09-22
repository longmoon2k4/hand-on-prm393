//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'package:lap_04/mockdatademo/mock.dart';
import 'package:lap_04/screens/screen_1.dart';
import 'package:lap_04/screens/screen_2.dart';
import 'package:lap_04/screens/screen_3.dart';
import 'package:lap_04/screens/screen_4.dart';
import 'package:lap_04/screens/screen_5.dart';

final List<Mock> MocKMennuItems = [
  Mock(title: 'Exercise 1 - Core Widgets', screen: Screen1()),
  Mock(title: 'Exercise 2 - Input Controls', screen: Screen2()),
  Mock(title: 'Exercise 3 - Layout Demo', screen: Screen3()),
  Mock(title: 'Exercise 4 - App Structure & Theme', screen: Screen4()),
  Mock(title: 'Exercise 5 - Common UI Fixes', screen: Screen5()),
];

