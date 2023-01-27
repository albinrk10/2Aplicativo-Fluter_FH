import 'package:albin_proyec_ulti/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Commodo fugiat aute excepteur nostrud. Cillum eu deserunt labore ex reprehenderit labore id laboris cupidatat consectetur Lorem id. '),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('CANCELAR'),
                 
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('OK'),
                 
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
