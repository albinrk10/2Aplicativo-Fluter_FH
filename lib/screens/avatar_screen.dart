import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
                child: const Text('SL'),
                 backgroundColor: Colors.indigo[900]),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
            maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://cdn1.iconfinder.com/data/icons/people-avatars-23/24/people_avatar_head_spiderman_marvel_spider_man-512.png'),
      )),
    );
  }
}
