import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:readerabooks/HomeScreen/WidgetsToSTF/cards/CardsToBookShelf.dart';
import 'package:readerabooks/HomeScreen/WidgetsToSTF/cards/MyBooks.dart';

import 'package:readerabooks/Profile/widgets/CardsToCollections.dart';
import 'package:readerabooks/Profile/widgets/CardsToGenger.dart';
import 'package:readerabooks/ProfileMy/cardsProfilePages.dart';
import 'package:readerabooks/ProfileMy/widgets/MessegeOnTheWall.dart';
import 'package:readerabooks/ThemeMyApp/CustomTheme.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:readerabooks/ThemeMyApp/config.dart';

import 'widgets/CardsToUpdates.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<MyProfilePage> {
  List<String> gengerToProfilePage = <String>[
    "Научная фантастика",
    "Фэнтези",
    "Детектив",
    "Романтика",
    "Триллер",
    "Ужасы",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Matthew Crow',
                          style: TextStyle(
                              color: currentTheme.currentTheme ==
                                      CustomTheme.darkTheme
                                  ? const Color(0xFF6F6F6F)
                                  : const Color(0xFF6F6F6F),
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        ),
                        Row(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    size: 18,
                                    color: 4 <= index
                                        ? Colors.grey
                                        : Theme.of(context).highlightColor,
                                  )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text('1.2k',
                                style: TextStyle(
                                    color: currentTheme.currentTheme ==
                                            CustomTheme.darkTheme
                                        ? const Color(0xFF6F6F6F)
                                        : const Color(0xFF6F6F6F),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20)),
                            Text('Books',
                                style: TextStyle(
                                    color: currentTheme.currentTheme ==
                                            CustomTheme.darkTheme
                                        ? const Color(0xFF6F6F6F)
                                        : const Color(0xFF6F6F6F)))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text('312',
                                style: TextStyle(
                                    color: currentTheme.currentTheme ==
                                            CustomTheme.darkTheme
                                        ? const Color(0xFF6F6F6F)
                                        : const Color(0xFF6F6F6F),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20)),
                            Text('Comments',
                                style: TextStyle(
                                    color: currentTheme.currentTheme ==
                                            CustomTheme.darkTheme
                                        ? const Color(0xFF6F6F6F)
                                        : const Color(0xFF6F6F6F)))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text('3.7k',
                                style: TextStyle(
                                    color: currentTheme.currentTheme ==
                                            CustomTheme.darkTheme
                                        ? const Color(0xFF6F6F6F)
                                        : const Color(0xFF6F6F6F),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20)),
                            Text('Followers',
                                style: TextStyle(
                                    color: currentTheme.currentTheme ==
                                            CustomTheme.darkTheme
                                        ? const Color(0xFF6F6F6F)
                                        : const Color(0xFF6F6F6F)))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withOpacity(0.8),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                           boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                        )
                        
                        
                        ,child: MessegeOnTheWall()),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Collection',
                      style: TextStyle(
                          color:
                              currentTheme.currentTheme == CustomTheme.darkTheme
                                  ? const Color(0xFF6F6F6F)
                                  : const Color(0xFF6F6F6F),
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      child: Text(
                        'More...',
                        style: TextStyle(
                            color: currentTheme.currentTheme ==
                                    CustomTheme.darkTheme
                                ? const Color(0xFF6F6F6F)
                                : const Color(0xFF6F6F6F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      4,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CardsToCollections(),
                          )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Updates',
                      style: TextStyle(
                          color:
                              currentTheme.currentTheme == CustomTheme.darkTheme
                                  ? const Color(0xFF6F6F6F)
                                  : const Color(0xFF6F6F6F),
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      child: Text(
                        'More...',
                        style: TextStyle(
                            color: currentTheme.currentTheme ==
                                    CustomTheme.darkTheme
                                ? const Color(0xFF6F6F6F)
                                : const Color(0xFF6F6F6F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Theme.of(context).primaryColor.withOpacity(0.4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Wrap(
                  children: List.generate(
                      gengerToProfilePage.length, (index) => CardsToUpdates()),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Themes',
                      style: TextStyle(
                          color:
                              currentTheme.currentTheme == CustomTheme.darkTheme
                                  ? const Color(0xFF6F6F6F)
                                  : const Color(0xFF6F6F6F),
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      child: Text(
                        'More...',
                        style: TextStyle(
                            color: currentTheme.currentTheme ==
                                    CustomTheme.darkTheme
                                ? const Color(0xFF6F6F6F)
                                : const Color(0xFF6F6F6F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Wrap(
                children: List.generate(
                    gengerToProfilePage.length,
                    (index) => CardsToGenger(
                          name: gengerToProfilePage[index],
                        )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All books',
                      style: TextStyle(
                          color:
                              currentTheme.currentTheme == CustomTheme.darkTheme
                                  ? const Color(0xFF6F6F6F)
                                  : const Color(0xFF6F6F6F),
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children:
                        List.generate(10, (index) => const ProfilePageCard()),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
