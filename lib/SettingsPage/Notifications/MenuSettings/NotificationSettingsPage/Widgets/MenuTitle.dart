import 'package:flutter/material.dart';

class MenuTitleToNotificationsSettings extends StatefulWidget {
  const MenuTitleToNotificationsSettings({super.key,
  required this.text,
  
  
  });
  final String text;

  @override
  State<MenuTitleToNotificationsSettings> createState() => _MenuTitleToNotificationsSettingsState();
}

class _MenuTitleToNotificationsSettingsState extends State<MenuTitleToNotificationsSettings> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,  style: Theme.of(context).primaryTextTheme.bodyText1);
  }
}