import 'package:flutter/material.dart';
import 'package:readerabooks/ThemeMyApp/config.dart';

class Exit extends StatefulWidget {
  const Exit({super.key});

  @override
  State<Exit> createState() => _ExitState();
}

class _ExitState extends State<Exit> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Подтвердите выход'),
      content: Text('Вы уверены, что хотите выйти из приложения?'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); 
          },
          child: Text('Отмена'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); 
          },
          child: Text('Выйти'),
        ),
      ],
    );
  }
}