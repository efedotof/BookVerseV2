import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:readerabooks/HomeScreen/WidgetsToSTF/cards/CardsToBookShelf.dart';
import 'package:readerabooks/HomeScreen/WidgetsToSTF/cards/MyBooks.dart';

class BookShelf extends StatefulWidget {
  const BookShelf({super.key});

  @override
  State<BookShelf> createState() => _BookShelfState();
}

class _BookShelfState extends State<BookShelf> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('MyBookBookshelf'.tr(), style:  Theme.of(context).primaryTextTheme.bodyText1),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, 
            child: Wrap(
              direction: Axis.horizontal,
              children: 
                List.generate(10, (index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: MyBookCard(),
                )),
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('WishlistedBooksBookshelf'.tr(), style:Theme.of(context).primaryTextTheme.bodyText1),
          ),

          Wrap(
            children: List.generate(30, (index) => const Padding(
              padding: EdgeInsets.only(top: 10),
              child: CardsToBookShelf(),
            ))
          )
        ],
      ),
    );
  }
}