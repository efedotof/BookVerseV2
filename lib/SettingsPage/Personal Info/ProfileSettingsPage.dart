import 'package:flutter/material.dart';

class ProfileSettingsPage extends StatefulWidget {
  const ProfileSettingsPage({super.key});

  @override
  State<ProfileSettingsPage> createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        title: Text(
              'Profile Settings',
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
    );
  }
}