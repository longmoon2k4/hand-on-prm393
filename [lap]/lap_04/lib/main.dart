//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'package:flutter/material.dart';
import 'package:lap_04/mockdatademo/mockMenuItems.dart';
import 'mainMenu.dart';
void main() {
  runApp(MaterialApp(
    home: MainMenu(menuItems: MocKMennuItems,),
    debugShowCheckedModeBanner: false,
  ));


}