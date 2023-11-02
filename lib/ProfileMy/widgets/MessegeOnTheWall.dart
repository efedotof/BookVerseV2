import 'package:flutter/material.dart';
import 'package:readerabooks/ThemeMyApp/CustomTheme.dart';
import 'package:readerabooks/ThemeMyApp/config.dart';

class MessegeOnTheWall extends StatefulWidget {
  const MessegeOnTheWall({super.key});

  @override
  State<MessegeOnTheWall> createState() => _MessegeOnTheWallState();
}

class _MessegeOnTheWallState extends State<MessegeOnTheWall> {
 @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Выравнивание элементов по левому краю
      children: <Widget>[
         TextFormField(
          decoration: InputDecoration(
            labelText: 'Что нового?',
            border: InputBorder.none,
            labelStyle: TextStyle(
              color: currentTheme.currentTheme ==
                  CustomTheme.darkTheme
                  ? const Color(0xFF6F6F6F)
                  : const Color(0xFF6F6F6F),
            ),
          ),
          maxLines: null,
          style: TextStyle(
            color: currentTheme.currentTheme ==
                CustomTheme.darkTheme
                ? const Color(0xFF6F6F6F)
                : const Color(0xFF6F6F6F),
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                // Действия, выполняемые при нажатии на кнопку "Прикрепить"
              },
              child: Text('Прикрепить'),
            ),
            Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: Icon(Icons.send, size: 17),
            ),
          ],
        ),
      ],
    ),
  );
}

}


