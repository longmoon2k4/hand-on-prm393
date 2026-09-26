//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'package:lap_04/Screens/Exercise_1.dart';
import 'package:lap_04/Screens/Exercise_2.dart';
import 'package:lap_04/Screens/Exercise_3.dart';
import 'package:lap_04/Screens/Exercise_4.dart';
import 'package:lap_04/Screens/Exercise_5.dart';
import 'package:lap_04/model/Screen.dart';

final List<Screen> MenuCardDemo = [
  Screen(
    title: 'Exercise 1 - Core Widgets',
    subtitle: '',
    screens: Exercise1(),
  ),
  Screen(
    title: 'Exercise 2 - Input Controls',
    subtitle: '',
    screens: Exercise2(),
  ),
  Screen(title: 'Exercise 3 - Layout Demo', subtitle: '', screens: Exercise3()),
  Screen(
    title: 'Exercise 4 - App Structure & Theme',
    subtitle: '',
    screens: Exercise4(),
  ),
  Screen(
    title: 'Exercise 5 - Common UI Fixes',
    subtitle: '',
    screens: Exercise5(),
  ),
];
