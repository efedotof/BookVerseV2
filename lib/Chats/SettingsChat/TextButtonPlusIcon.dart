import 'package:flutter/material.dart';

class TextButtonPlusIcon extends StatefulWidget {
  const TextButtonPlusIcon({super.key});

  @override
  State<TextButtonPlusIcon> createState() => _TextButtonPlusIconState();
}

class _TextButtonPlusIconState extends State<TextButtonPlusIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.link),
            Text('Hello')
          ],
        ),
      ),
    );
  }
}