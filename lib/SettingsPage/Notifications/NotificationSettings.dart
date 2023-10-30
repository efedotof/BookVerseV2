import 'package:flutter/material.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/DisablingNotifications.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/ManagingGroups.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/NotificationsAboutNewPublications.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/NotificationsFromGroups.dart';
import 'package:readerabooks/SettingsPage/Notifications/MenuSettings/NotificationSettingsPage/PersonalNotifications.dart';


class NotificationsSettings extends StatefulWidget {
  const NotificationsSettings({super.key});

  @override
  State<NotificationsSettings> createState() => _NotificationsSettingsState();
}

class _NotificationsSettingsState extends State<NotificationsSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
              'Notification',
              style: Theme.of(context).primaryTextTheme.bodyText1,
            ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons
              .chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              NotificationsAboutNewPublications(),
              PersonalNotification(),
              NotificationsFromGroups(),
              DisablingNotifications(),
              ManagingGroups(),
            ],
          ),
        ),
      ),
    );
  }
}