import 'package:flutter/material.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/Widgets/MenuTitle.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/Widgets/MyCheckbox.dart';


class DisablingNotifications extends StatefulWidget {
  const DisablingNotifications({super.key});

  @override
  State<DisablingNotifications> createState() => _DisablingNotificationsState();
}

class _DisablingNotificationsState extends State<DisablingNotifications> {
    @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MenuTitleToNotificationsSettings(text: 'Отключение уведомлений:'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          const CheckBoxCustomItemMenu(text:'Отключение временных уведомлений.'),
          const CheckBoxCustomItemMenu(text:'Постоянное отключение уведомлений.'),
          const CheckBoxCustomItemMenu(text:'Напоминания о включении уведомлений.'),
  
        ],
      ),
    );
  }
}