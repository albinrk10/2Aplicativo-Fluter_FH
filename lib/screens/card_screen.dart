import 'package:albin_proyec_ulti/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
             
              imageUrl:
                  'https://gcdn.lanetaneta.com/wp-content/uploads/2022/03/El-poster-de-Spider-Man-No-Way-Home-parece-tener-un.5.jpeg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
            
              imageUrl:
                  'https://images.thedirect.com/media/article_full/3CB4A8A1-C754-4BF3-8E1D-9832A20B7846.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
             name: 'Spidey-Verse',
              imageUrl:
                  'https://img.europapress.es/fotoweb/fotonoticia_20210721200839_1200.jpg',
            ),
            SizedBox(height: 100),
          ],
        ));
  }
}
