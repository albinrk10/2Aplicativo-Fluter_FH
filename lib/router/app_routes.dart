import 'package:flutter/material.dart';
import 'package:albin_proyec_ulti/models/models.dart';
import 'package:albin_proyec_ulti/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //Todo : borrar home
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.account_balance_sharp),
    MenuOption(
        route: 'listView1',
        name: 'listView tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt_sharp),
    MenuOption(
        route: 'listView2',
        name: 'listView tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list_outlined),
    MenuOption(
        route: 'alert',
        name: 'alertas-alrt',
        screen: const AlerScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'card-mal',
        screen: const CardScreen(),
        icon: Icons.cached_sharp),
    MenuOption(
        route: 'avatar',
        name: 'Circle avatar',
        screen: const AvatarScreen(),
        icon: Icons.account_box_rounded),  
      MenuOption(
        route: 'Animated',
        name: 'Animated Flutter',
        screen: const AnimatedScreen(),
        icon: Icons.adb_rounded),  
    MenuOption(
        route: 'Inputs',
        name: 'Inputs Flutter',
        screen: const InputsScreen(),
        icon: Icons.input),     
        MenuOption(
        route: 'Slider',
        name: 'Slider Screen',
        screen: const SliderScreen(),
        icon: Icons.snippet_folder),             
  ];
    static Map<String, Widget Function(BuildContext)> getAppRoutes(){
        Map<String, Widget Function(BuildContext)>appRoutes={};
      appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

      for (final option in menuOptions) {
        appRoutes.addAll({option.route: (BuildContext context) => option.screen});
        
      }
      return appRoutes;
    }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const Listview1Screen(),
  //   'listView2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlerScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlerScreen(),
    );
  }
}

