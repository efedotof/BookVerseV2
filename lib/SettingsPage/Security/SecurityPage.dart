import 'package:flutter/material.dart';

import '../Notifications/MenuSettings/NotificationSettingsPage/Widgets/MyCheckbox.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        title: Text(
              'Security',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CheckBoxCustomItemMenu(text: 'AutoAuthorezation',),
              const CheckBoxCustomItemMenu(text: 'Touch Id/ ScanId',),
              const CheckBoxCustomItemMenu(text: 'Face ID',),
              const CheckBoxCustomItemMenu(text: 'Two-factor authorization',),
              const CheckBoxCustomItemMenu(text: 'Вход по пинкоду',),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.blue
                ),
                child: GestureDetector(
                  child: const Center(child: Text('Change Password')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}