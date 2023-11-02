import 'package:flutter/material.dart';

class CardsToCollections extends StatefulWidget {
  const CardsToCollections({super.key});

  @override
  State<CardsToCollections> createState() => _CardsToCollectionsState();
}

class _CardsToCollectionsState extends State<CardsToCollections> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name'),
                Text('Описание')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Кол-во книг'),
                SizedBox(height: 10,),
                Text('Жанр')
              ],
            ),
      
      
          ],
        ),
      ),
    );
  }
}