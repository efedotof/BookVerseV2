import 'package:esys_flutter_share_plus/esys_flutter_share_plus.dart';
import 'package:flutter/material.dart';
import 'package:readerabooks/Profile/ProfilePage.dart';
import 'package:readerabooks/ThemeMyApp/CustomTheme.dart';
import 'package:readerabooks/ThemeMyApp/config.dart';


class Descriptions extends StatefulWidget {
  const Descriptions({super.key});

  @override
  State<Descriptions> createState() => _DescriptionsState();
}

class _DescriptionsState extends State<Descriptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Detal Book', style: Theme.of(context).primaryTextTheme.bodyText1,),
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.share), // Иконка "Поделиться"
              onPressed: ()  {
                Share.text('Привет, друзья!', 'Я нашел удивительную книгу, которая, безусловно, вас заинтересует!Книга называется [Название книги] и написана [Имя автора]. Это захватывающая история, которая рассказывает о [краткое описание сюжета или темы книги]. Я уверен(а), что она вас поразит и принесет немало удовольствия.Вы можете прочитать эту книгу в [название приложения с книгами], где она доступна для скачивания. Просто воспользуйтесь ссылкой ниже, чтобы перейти к книге:[Вставьте ссылку на книгу в приложении]Я уверен(а), что вы найдете в этой книге что-то особенное, что вас вдохновит и заставит задуматься. Давайте поделимся впечатлениями после прочтения!Приятного чтения!', 'text/plain');
              },
            ),
          ],
        ),
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.amber),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('A Love Hate Thing',style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F),fontSize: 25)),
                              GestureDetector(onTap: (){
                                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
                              },child: Text('Whille D. Grandsfilds',style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F)))),
                            ],
                          )),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF4FB8A2),
                            ),
                            child: const Icon(Icons.bookmark, color: Colors.white,),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFFF6F6F6):Colors.black26
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Reading',style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F))),
                                    Text('4+',style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F))),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Возростное ограничение',style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F))),
                                    Text('16+',style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F))),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Язык',style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F))),
                                    Text('Русский',style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F))),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width,
                        child: Scrollbar(
                          child: ListView(
                            children:[
                              Text('Voluptate veniam velit deserunt in fugiat nostrud nisi et veniam pariatur. Culpa enim laborum veniam consequat officia pariatur fugiat anim fugiat voluptate proident minim Lorem. Velit ea ipsum elit aliqua magna pariatur. Exercitation id pariatur magna aliquip proident qui. Non ex consequat mollit nostrud laboris laboris reprehenderit nisi cupidatat id. Sit dolor do pariatur dolor laborum exercitation in adipisicing. Officia occaecat esse dolor minim aute anim est consequat deserunt ipsum.Tempor minim cupidatat non ipsum non commodo dolor. Quis voluptate voluptate sunt in ipsum eu consectetur. Quis adipisicing sint minim minim nisi sunt mollit proident aliqua laboris ullamco in tempor consectetur.', style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?const Color(0xFF6F6F6F):const Color(0xFF6F6F6F)))
                            ]
                                
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Align(
                          alignment:
                              Alignment.centerRight, // Это выравнивание справа
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0xFFFF794E),
                            ),
                            child: const Center(
                              child: Text('Start Reading'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
