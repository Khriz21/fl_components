import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void iosDisplplayDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'Este es el contenido de esta alerta',
              ),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            )
          ],
        );
      },
    );
  }

  void androidDisplayDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(10),
        ),
        elevation: 6,
        title: const Text('Titulo'), //

        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Este es el contenido de esta alerta',
            ),
            SizedBox(
              height: 10,
            ),
            FlutterLogo(
              size: 100,
            ),
          ],
        ),

        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Ok'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Text(
                'Mostrar Alerta',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            onPressed: () => Platform.isAndroid
                ? androidDisplayDialog(context)
                : iosDisplplayDialog(context),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.close_fullscreen_outlined),
        ),
      ),
    );
  }
}
