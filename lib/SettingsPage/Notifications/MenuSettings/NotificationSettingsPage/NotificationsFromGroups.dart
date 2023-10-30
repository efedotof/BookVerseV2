import 'package:flutter/material.dart';

import 'Widgets/MenuTitle.dart';
import 'Widgets/MyCheckbox.dart';

class NotificationsFromGroups extends StatefulWidget {
  const NotificationsFromGroups({super.key});

  @override
  State<NotificationsFromGroups> createState() => _NotificationsFromGroupsState();
}

class _NotificationsFromGroupsState extends State<NotificationsFromGroups> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MenuTitleToNotificationsSettings(text: 'Уведомления от групп'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          const CheckBoxCustomItemMenu(text:'Уведомления о новых книгах, опубликованных в группе.'),
          const CheckBoxCustomItemMenu(text:'Уведомления о предстоящих мероприятиях или встречах, организованных группой.'),
          const CheckBoxCustomItemMenu(text:'Уведомления о важных новостях или обновлениях в группе.'),
          const CheckBoxCustomItemMenu(text:'Уведомления о новых участниках, присоединившихся к группе.'),
          const CheckBoxCustomItemMenu(text:'Уведомления о новых комментариях к публикациям или книгам в группе.'),
        ],
      ),
    );
  }
}