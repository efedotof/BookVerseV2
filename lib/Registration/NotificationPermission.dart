import 'package:flutter/material.dart';

import 'Checkingposts.dart';

class NotificationPermission extends StatefulWidget {
  const NotificationPermission({super.key});

  @override
  State<NotificationPermission> createState() => _NotificationPermissionState();
}

class _NotificationPermissionState extends State<NotificationPermission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Do yo want to turn on notification ?'),
              Container(width: MediaQuery.of(context).size.width * 0.6, height: MediaQuery.of(context).size.height * 0.4,color: Colors.amber,),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                       Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Checkinposts()),
                            );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  Text('Not Now'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
