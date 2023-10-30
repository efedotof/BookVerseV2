import 'package:flutter/material.dart';
import 'package:readerabooks/Chats/SettingsChat/CardLinks.dart';
import 'package:readerabooks/Chats/SettingsChat/TextButtonPlusIcon.dart';

import 'SettingsChat/widget/CardProfile.dart';

class WithoutEnteringTheChat extends StatefulWidget {
  const WithoutEnteringTheChat({super.key});

  @override
  State<WithoutEnteringTheChat> createState() => _WithoutEnteringTheChatState();
}

class _WithoutEnteringTheChatState extends State<WithoutEnteringTheChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const CardProfile(),
                SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(3, (index) => const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CardLinks(icon: Icons.copy, text: 'Copy link',),
                        )),
                      ),
                    ),
                  ),
                  const TextButtonPlusIcon(),//Перейти в профиль
                  const TextButtonPlusIcon(),//поделиться
                  const TextButtonPlusIcon(),// удалить чат
                  const TextButtonPlusIcon(),//очистить чат
                  const TextButtonPlusIcon(),//Заблокирова
                  const TextButtonPlusIcon(),//Жалоба
                  
                ],
              ),
            ),
              ],
            ),
            
            Center(child: TextButton(onPressed: (){
              Navigator.pop(context);
      
            }, child:const Text('Close') ))
      
        
        
          ],
        ),
      ),
    );
  }
}