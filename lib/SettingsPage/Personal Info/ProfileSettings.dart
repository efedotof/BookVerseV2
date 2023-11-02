import 'package:flutter/material.dart';
import 'package:readerabooks/ProfileMy/ProfilePage.dart';

import '../../Profile/ProfilePage.dart';
import 'ProfileSettingsPage.dart';


class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  Scaffold(
                 appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,leading: IconButton(
    icon: const Icon(Icons.chevron_left), // Замените "new_icon" на иконку, которую вы хотите использовать
    onPressed: () {
      Navigator.pop(context);
    },
  ),),
      backgroundColor: Theme.of(context).primaryColor,
                
                
                
                body: MyProfilePage())),
            );
        },
        child: Container(
          color: Colors.transparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                           shape: BoxShape.circle
                          ),
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.2,
                        ),
                        const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name Author', style: Theme.of(context).primaryTextTheme.bodyText1,),
                        Text('Push', style: Theme.of(context).primaryTextTheme.bodyText2)
                      ],
                    ),
                ],
              ),
                    
              Icon(Icons.remove_red_eye_sharp, color: Theme.of(context).focusColor),
                    
            ],
          ),
        ),
      ),
    );
  }
}