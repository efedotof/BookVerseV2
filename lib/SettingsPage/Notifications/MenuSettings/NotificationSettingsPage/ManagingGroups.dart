import 'package:flutter/material.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/Widgets/MenuTitle.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/Widgets/MyCheckbox.dart';


class ManagingGroups extends StatefulWidget {
  const ManagingGroups({super.key});

  @override
  State<ManagingGroups> createState() => _ManagingGroupsState();
}

class _ManagingGroupsState extends State<ManagingGroups> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MenuTitleToNotificationsSettings(text: 'Управление группами'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          const CheckBoxCustomItemMenu(text:'Управление подписками на группы.'),
          const CheckBoxCustomItemMenu(text:'Просмотр настроек групп.'),
          const CheckBoxCustomItemMenu(text:'Изменение приоритета групп.'),
          const CheckBoxCustomItemMenu(text:'Настройка уведомлений для групп.'),
          const CheckBoxCustomItemMenu(text:'Уведомления об активности в группах.'),
        ],
      ),
    );
  }
}