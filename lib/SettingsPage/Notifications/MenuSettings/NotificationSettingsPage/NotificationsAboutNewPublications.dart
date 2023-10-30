import 'package:flutter/material.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/Widgets/MenuTitle.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/Widgets/MyCheckbox.dart';


class NotificationsAboutNewPublications extends StatefulWidget {
  const NotificationsAboutNewPublications({super.key});

  @override
  State<NotificationsAboutNewPublications> createState() => _NotificationsAboutNewPublicationsState();
}

class _NotificationsAboutNewPublicationsState extends State<NotificationsAboutNewPublications> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MenuTitleToNotificationsSettings(text: 'Уведомления о новых публикациях'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          const CheckBoxCustomItemMenu(text:'Уведомления о новых книгах или главах, опубликованных пользователями, на которых пользователь подписан'),
          const CheckBoxCustomItemMenu(text:'Уведомления о новых комментариях к книгам или отзывах.'),
          const CheckBoxCustomItemMenu(text:'Уведомления о новых публикациях в группах.'),
        ],
      ),
    );
  }
}