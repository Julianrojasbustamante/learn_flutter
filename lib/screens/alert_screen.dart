import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Esto es un nuevo contendio en una alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancelar', style: TextStyle(color: Colors.red),)
            ),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Ok')
            )
          ],
        );
      }
    );
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Esto es un nuevo contendio en una alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancelar', style: TextStyle(color: Colors.red),)
            ),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Ok')
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
          //   primary: Colors.indigo,
          //   shape: const StadiumBorder(),
          //   elevation: 0
          // ),

          // onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Text('Show alert', style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.close),
      ),
    );
  }
}
