import 'package:flutter/material.dart';

class CardsToGenger extends StatefulWidget {
  const CardsToGenger({super.key,
    required this.name,
  
  
  
  });
  final String name;

  @override
  State<CardsToGenger> createState() => _CardsToGengerState();
}

class _CardsToGengerState extends State<CardsToGenger> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(4),
        width: MediaQuery.of(context).size.width  / 4,
        height: MediaQuery.of(context).size.height * 0.1 ,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(widget.name.toUpperCase()),
        ),
      ),
    );
  }
}