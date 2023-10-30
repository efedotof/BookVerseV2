/// *****************************************
/*                                          */
/*        📱 Название приложения: BookVerse      */
/*        📚 Описание: Это интуитивное мобильное приложение для чтения и публикации книг. Откройте мир литературы прямо с вашего устройства, где бы вы ни находились. С легкостью загружайте и читайте свои любимые книги из памяти устройства в различных форматах.    */
/*        👤 Автор: efedotov                       */
/*        📅 Дата: 2023-07-29                 */
/*        🚀 Версия: 0.0                         */
/*                                          */
/*        © Все права защищены.                */
/*                                          */
/// *****************************************

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:readerabooks/SettingsPage/Exit/exit.dart';
import 'package:readerabooks/SettingsPage/Language/Language.dart';
import 'package:readerabooks/SettingsPage/Personal%20Info/ProfileSettings.dart';
import 'package:readerabooks/HomeScreen/WidgetsToSTF/cards/CardsToSettingsScreens.dart';
import 'package:readerabooks/Model/SettingMenu.dart';
import 'package:readerabooks/SettingsPage/Notifications/NotificationSettings.dart';
import 'package:readerabooks/SettingsPage/Personal%20Info/ProfileSettingsPage.dart';
import 'package:readerabooks/SettingsPage/Preferences/Preferences.dart';
import 'package:readerabooks/ThemeMyApp/CustomTheme.dart';
import 'package:readerabooks/ThemeMyApp/config.dart';

import 'HelpCenter/HelpCenter.dart';
import 'Security/SecurityPage.dart';

class SettingMenuPages extends StatefulWidget {
  const SettingMenuPages({super.key});

  @override
  State<SettingMenuPages> createState() => _SettingMenuPagesState();
}

class _SettingMenuPagesState extends State<SettingMenuPages> {
  List<SettingMenuItem> menuItems = [
    SettingMenuItem('General', Icons.arrow_drop_down_circle),
    SettingMenuItem('Privacy', Icons.arrow_drop_down_circle),
    SettingMenuItem('Notification', Icons.arrow_drop_down_circle),
    SettingMenuItem('Display', Icons.arrow_drop_down_circle),
    SettingMenuItem('Help', Icons.arrow_drop_down_circle),
  ];

  List<bool> isOpen = [false, false, false, false, false];

  void onTaps1() {
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LanguageSettings()),
            );

  }



  void onTapsToNotifications() {
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NotificationsSettings()),
            );

  }
  void onTapsToSecurity() {
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecurityPage()),
            );

  }
  void onTapsToPersonalInfo() {
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileSettingsPage()),
            );

  }
  void onTapsToHelpCenter() {
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HelpCenter()),
            );

  }
  void onTapsToPreferences() {
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Preferences()),
            );

  }


  void exit(){
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Exit()),
            );
  }

  bool isLogout = false;
  bool datastheme = false;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: 
        [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'AccountToSettings'.tr(),
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ProfileSettings(),
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 4, right: 4),
                  child: Divider(
                   color: (Theme.of(context).brightness == Brightness.dark
                                ? const Color(0xFFBBC2CB)
                                : const Color(0xFF7A7C91)), 
                  height: 20,
                  thickness: 1, 
                )),
                CardsToSettingsScreens(
                    icon: Icons.person,
                    text: 'Personal Info',
                    onTaps: onTapsToPersonalInfo,
                    colorToIcons: const Color(0xFF42538A)),
                     CardsToSettingsScreens(
                    icon: Icons.notifications,
                    text: 'NotificationsLabelToSettings'.tr(),
                    onTaps: onTapsToNotifications,
                    colorToIcons: const Color(0xFF249BCD)),
                   CardsToSettingsScreens(
                    icon: Icons.room_preferences,
                    text: 'Preferences',
                    onTaps: onTapsToPreferences,
                    colorToIcons: const Color(0xFF5757A3)),
                     CardsToSettingsScreens(
                    icon: Icons.security,
                    text: 'Security',
                    onTaps: onTapsToSecurity,
                    colorToIcons: const Color(0xFF6AAA94)),
                  
                CardsToSettingsScreens(
                    icon: Icons.language,
                    text: 'LanguageLabelToSettings'.tr(),
                    onTaps: onTaps1,
                    colorToIcons: const Color(0xFFF09977)),
               
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                            color: const Color(0xFF513CBF).withOpacity(0.1),
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.brightness_3_rounded,
                          color: Color(0xFF513CBF),
                        ),
                      ),
                      Text('DarkModeLabelToSettings'.tr(),
                          style: Theme.of(context).primaryTextTheme.bodyText1),
                      Switch(
                        splashRadius: 50.0,
                        value: currentTheme.currentTheme == ThemeMode.dark,
                        onChanged: (value) {
                          currentTheme.toggleTheme();
                          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          systemNavigationBarColor: currentTheme.currentTheme == ThemeMode.dark
        ? CustomTheme.darkTheme.primaryColor
        : CustomTheme.lightTheme.primaryColor,
      ));
                        },
                      )
                    ],
                  ),
                ),
                CardsToSettingsScreens(
                    icon: Icons.group_work,
                    text: 'HelpLabelToSettings'.tr(),
                    onTaps: onTapsToHelpCenter,
                    colorToIcons: const Color(0xFFE34B6E)),
                 CardsToSettingsScreens(
                    icon: Icons.logout,
                    text: 'Выйти',
                    onTaps: exit,
                    colorToIcons: const Color(0xFFE34B6E)),              
              ],
            ),
          ),
        ),
        ],
      ),
    );
  }
}
