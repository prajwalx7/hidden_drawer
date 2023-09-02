import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
// import this package  =>  hidden_drawer_menu: ^3.0.1

class HiddenDrawer extends StatelessWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      elevationAppBar: 0,
      isTitleCentered: true,
      leadingAppBar: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      actionsAppBar: const [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.sunny,
            color: Colors.black,
          ),
        ),
      ],
      screens: _buildScreens(),
      initPositionSelected: 0,
      backgroundColorMenu: Colors.teal.shade200,
      slidePercent: 50.0,
    );
  }

  List<ScreenHiddenDrawer> _buildScreens() {
    return [
      ScreenHiddenDrawer(
          // repeat this property for adding mutiple tiles
          ItemHiddenMenu(
            name: "Home",
            baseStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            selectedStyle: const TextStyle(),
            colorLineSelected: Colors.teal,
          ),
          this
          // const HomePage(),
          ),
    ];
  }
}
