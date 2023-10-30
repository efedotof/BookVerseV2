import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
              'Help Center',
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