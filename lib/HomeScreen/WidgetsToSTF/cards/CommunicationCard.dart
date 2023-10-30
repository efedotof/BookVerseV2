import 'package:flutter/material.dart';
import 'package:readerabooks/Chats/ChatsPage.dart';
import 'package:readerabooks/Chats/WithoutEnteringTheChat.dart';

class CommunicationCard extends StatefulWidget {
  const CommunicationCard({super.key});

  @override
  State<CommunicationCard> createState() => _CommunicationCardState();
}

class _CommunicationCardState extends State<CommunicationCard> {
 @override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: (){
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatPages()),
            );
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.09,
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center, // Изменим CrossAxisAlignment на center
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.12,
                height: MediaQuery.of(context).size.height * 0.13,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
              ),
                const SizedBox(width: 8.0), // Добавляем небольшой отступ между кругом и текстом
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center, // Выравниваем текст по центру
                child: Text('Name Author', style: Theme.of(context).primaryTextTheme.bodyText1,),
              ),
              Align(
                alignment: Alignment.center, // Выравниваем текст по центру
                child: Text('Message For me hehehehehe', style: Theme.of(context).primaryTextTheme.bodyText2,),
              ),
            ],
          ),
            ],
          ),
        
          GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WithoutEnteringTheChat()),
            );
            },
            child: Icon(Icons.more_horiz, color: Theme.of(context).focusColor),
          )
        ],
        
      ),
    ),
  );
}
}