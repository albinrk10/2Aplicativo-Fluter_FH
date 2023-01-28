import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlerScreen extends StatelessWidget {
  const AlerScreen({Key? key}) : super(key: key);
  void displayDialogIOS (BuildContext context) {
    showDialog(
      barrierDismissible:false ,
      context: context,
      builder: (context){
        return  CupertinoAlertDialog(
          title: const Text('Titulo'),
             content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Hola mundo'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
            ),
            actions: [
              TextButton(
                onPressed: ()=>  Navigator.pop(context),
                child: const Text('Cancelar',style: TextStyle(color:Colors.red),)
                ),
                TextButton(
                onPressed: ()=>  Navigator.pop(context),
                child: const Text('Ok')
                )
            ],
        );
      }
    );

  }
  void displayDialogAndroid(BuildContext context){
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context){
          return AlertDialog(
          elevation: 5,
          shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ) ,
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Hola mundo'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
            ),
            actions: [
              TextButton(
                onPressed: ()=>  Navigator.pop(context),
                child: const Text('Cancelar')
                ),
                TextButton(
                onPressed: ()=>  Navigator.pop(context),
                child: const Text('Ok')
                )
            ],
          );
        }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Colors.indigo,
              //   shape: const StadiumBorder(),
              //   elevation: 0,
              // ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text('Mostar alerta', style: TextStyle(fontSize: 16)),
              ),
             // onPressed:()=> displayDialogAndroid(context)
              onPressed: () => !Platform.isAndroid 
              ? displayDialogAndroid(context)
              :displayDialogIOS(context)
              )
              ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
