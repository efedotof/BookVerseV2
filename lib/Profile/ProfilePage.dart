import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:readerabooks/HomeScreen/WidgetsToSTF/cards/CardsToBookShelf.dart';
import 'package:readerabooks/HomeScreen/WidgetsToSTF/cards/MyBooks.dart';
import 'package:readerabooks/Profile/cardsProfilePages.dart';
import 'package:readerabooks/ThemeMyApp/CustomTheme.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:readerabooks/ThemeMyApp/config.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Matthew Crow',
          style: Theme.of(context).primaryTextTheme.bodyText1,
        ),
      ),
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
                  const SizedBox(width: 10,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Matthew Crow', style:TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F),fontSize: 25, fontWeight: FontWeight.w400), ),
                        Row(
                children: List.generate(5, (index) => Icon(Icons.star, size: 18, color: 4 <= index? Colors.grey:Theme.of(context).highlightColor,)),
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
                            Text('1.2k' ,style:TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F), fontWeight: FontWeight.w700, fontSize: 20)),
                            Text('Books' ,style:TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F)))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text('312' ,style:TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F), fontWeight: FontWeight.w700, fontSize: 20)),
                            Text('Comments' ,style:TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F)))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text('3.7k' ,style:TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F), fontWeight: FontWeight.w700, fontSize: 20)),
                            Text('Followers' ,style:TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F)))
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
                        GestureDetector(
                          onTap: (){
                           
                          },
                          child: Container(
                                          width: MediaQuery.of(context).size.width * 0.4,
                                          height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFFD1D0D0),
                                            width: 2.0,
                                          ),
                                          color: Colors.transparent, 
                              ),
                              child: const Center(
                                          child: Text(
                                            "Follow",
                                            style: TextStyle(
                                              color: Color(0xFFD1D0D0), 
                                            ),
                                          ),
                              ),
                            ),
                        ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFD1D0D0),
                      width: 2.0,
                    ),
                    color: Colors.transparent, 
                  ),
                  child: const Center(
                    child: Text(
                      "Writen",
                      style: TextStyle(
                        color: Color(0xFFD1D0D0), 
                      ),
                    ),
                  ),
                            ),
                          ),
                    ],
                  ),
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(alignment: Alignment.centerLeft,child: Text('Mevcut kitaplar',style:TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F),fontSize: 18, fontWeight: FontWeight.w400),)),
            ),
      
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Wrap(
                    children: List.generate(10, (index) => const ProfilePageCard()),
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