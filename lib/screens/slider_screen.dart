import 'package:albin_proyec_ulti/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue=100;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Appbar')
      ),
      body:Column(
        children: [
          Slider.adaptive(
            min:50 ,
            max:400 ,
            activeColor: AppTheme.primary,
            
            value: _sliderValue,
      
            onChanged: (value){
           _sliderValue =value;
           setState(() {
             
           });
            }
            ),
            SingleChildScrollView(
              child: Image(
                image: NetworkImage(
                'https://lanthorn.com/wp-content/uploads/2022/01/spider-mannowayhome_lob_crd_02_0.jpg'),
              fit: BoxFit.contain,
              width:_sliderValue,
              ),
            ),
            
        ],
      ),
    );
  }
}