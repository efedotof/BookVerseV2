import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../WidgetsToSTF/cards/CardToBag.dart';

class Bag extends StatefulWidget {
  const Bag({super.key});

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('MyBagOnBag'.tr(), style:  Theme.of(context).primaryTextTheme.bodyText1),
                IconButton(onPressed: (){}, icon: const Icon(Icons.add, color:Color(0xFF82808A)))
              
              ],
            ),
          ),
           Wrap(
            children: List.generate(30, (index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CardsToBookBag(
                    title: 'card.title',
                    rating: 5,
                    genre: 'card.genre',
                    author: "Me",
                    status: 'Не опубликовано',
                  ),
                );
            }),
          )
        ],
      ),
    );
  }
}