import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:readerabooks/HomeScreen/AdditionScreens/Bag.dart';
import 'package:readerabooks/HomeScreen/AdditionScreens/Booksstore.dart';
import 'package:readerabooks/HomeScreen/AdditionScreens/Bookshelf.dart';
import 'package:readerabooks/HomeScreen/AdditionScreens/Communication.dart';
import 'package:readerabooks/SettingsPage/Setting.dart';
import 'package:readerabooks/Scanner/ScannerQr.dart';
import 'package:readerabooks/HomeScreen/AdditionScreens/notification.dart';
import 'package:readerabooks/HomeScreen/WidgetsToSTF/Search.dart';
import 'package:readerabooks/ThemeMyApp/CustomTheme.dart';
import 'package:readerabooks/ThemeMyApp/config.dart';




class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const BookShelf(),
    const BookShare(),
    const Bag(),
    const Communication(),
    const SettingMenuPages(),
  ];

  @override
  Widget build(BuildContext context) {

    return  WillPopScope(
      onWillPop: () async {
        // Возвращаете true, чтобы разрешить возврат, или false, чтобы запретить его.
        return false; // Запретить возврат
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar:  AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            const Search(),
            IconButton(
              onPressed: () {
     Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScannerQr()),
              );
    
              },
              icon: const Icon(Icons.flip),
            ),
            IconButton(
              onPressed: () {
    
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationScreens()),
              );
              },
              icon: const Icon(Icons.notifications),
            ),
          ],
        ),
       
        body: _screens[_currentIndex],
    
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, 
          
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
        
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.chrome_reader_mode),
              label: 'MenuItemsOneOnHome'.tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.book),
              label: 'MenuItemsTwoOnHome'.tr(),
            ),
            
            BottomNavigationBarItem(
              icon: const Icon(Icons.badge),
              label:'MenuItemsThreeOnHome'.tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.insert_comment),
              label: 'MenuItemsFourOnHome'.tr(),
              
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person_2),
              label: 'MenuItemsFiveAccount',
              
            ),
          ],
        ),
    
        // drawer: Drawer(
        //   backgroundColor: Theme.of(context).primaryColor,
        
        //   child: ListView(
        //     padding: EdgeInsets.all(10),
        //     children: [
        //       ListTile(
        //         title: Container(height: MediaQuery.of(context).size.height * 0.02,width: MediaQuery.of(context).size.width * 0.02 ),
        //         onTap: () {
        //         },
        //       ),
        //       ListTile(
                // title:Container(child: Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //   Container(
                //     decoration: BoxDecoration(
                //       color: Colors.amber,
                //       borderRadius: BorderRadius.circular(7),
                //     ),
                //     width: MediaQuery.of(context).size.width * 0.2,
                //     height: MediaQuery.of(context).size.width * 0.2,
                //   ),
                //   SizedBox(width: 10,),
                //   Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text('Name Author', style: Theme.of(context).primaryTextTheme.bodyText1,),
                //       Text('email users', style: Theme.of(context).primaryTextTheme.bodyText2)
                //     ],
                //   )
    
    
                // ],),),
        //         onTap: () {
        //           Navigator.pop(context); 
        //         },
        //       ),
    
    
        //       ListTile(
        //         leading: Icon(Icons.home, color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),
        //         title: Text('DrawerOnHomeToHomeScreens'.tr(), style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),),
        //         onTap: () {
        //           Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => Home()),
        //       );
        //         },
        //       ),
        //       //  ListTile(
        //       //   leading: Icon(Icons.collections, color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),
        //       //   title: Text('DrawerOnNewCollectionsToHomeScreens'.tr(), style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),),
        //       //   onTap: () {
                 
        //       //   },
        //       // ),
        //       //  ListTile(
        //       //   leading: Icon(Icons.edit_road,  color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),
        //       //   title: Text('DrawerOnEditorsToHomeScreens'.tr(), style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),),
        //       //   onTap: () {
                 
        //       //   },
        //       // ),
        //       //  ListTile(
        //       //   leading: Icon(Icons.topic, color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),
        //       //   title: Text('DrawerOnTopDealseToHomeScreens'.tr(), style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),),
        //       //   onTap: () {
                 
        //       //   },
        //       // ),
        //        ListTile(
        //         leading: Icon(Icons.notifications, color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),
        //         title: Text('DrawerOnNotificationsToHomeScreens'.tr(), style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),),
        //         onTap: () {
                 
        //         },
        //       ),
        //        ListTile(
        //         leading: Icon(Icons.settings, color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),
        //         title: Text('DrawerOnSettingToHomeScreens'.tr(), style: TextStyle(color: currentTheme.currentTheme == CustomTheme.darkTheme?Color(0xFF6F6F6F):Color(0xFF6F6F6F)),),
        //         onTap: () {
                  
        //           Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => SettingMenuPages()),
        //       );
        //         },
        //       ),
              
     
        //     ],
        //   ),
        // ),
      ),
    );
  }
}