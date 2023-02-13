import 'package:albin_proyec_ulti/router/app_routes.dart';
import 'package:albin_proyec_ulti/screens/screens.dart';
import 'package:albin_proyec_ulti/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('componentes en Flutter Albin'),
          //elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(
                    menuOptions[i].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(menuOptions[i].name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const Listview1Screen());

                    Navigator.pushNamed(context, menuOptions[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
