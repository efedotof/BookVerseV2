import 'package:flutter/material.dart';

import 'Widgets/MenuTitle.dart';
import 'Widgets/MyCheckbox.dart';

class PersonalNotification extends StatefulWidget {
  const PersonalNotification({super.key});

  @override
  State<PersonalNotification> createState() => _PersonalNotificationState();
}

class _PersonalNotificationState extends State<PersonalNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MenuTitleToNotificationsSettings(text: 'Личные уведомления'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          const CheckBoxCustomItemMenu(text:'Уведомления о личных сообщениях и запросах в друзья.'),
          const CheckBoxCustomItemMenu(text:'Уведомления о новых подписчиках и запросах на подписку.'),
          const CheckBoxCustomItemMenu(text:'Уведомления о лайках и комментариях к собственным книгам или постам.'),
        ],
      ),
    );
  }
}