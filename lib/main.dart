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
import 'package:readerabooks/Definingpage/DefiningPage.dart';
import 'package:readerabooks/StartScreens/Start.dart';
import 'package:readerabooks/ThemeMyApp/CustomTheme.dart';
import 'package:readerabooks/ThemeMyApp/config.dart';
import 'package:readerabooks/generated/codegen_loader.g.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  
  await CustomTheme().loadTheme();
  runApp(EasyLocalization(
      supportedLocales: [const Locale('uk'), const Locale('ru'), const Locale('en'),const Locale('be'),const Locale('kk'),const Locale('hy'),const Locale('ka'),const Locale('az'),const Locale('mo'),const Locale('tg'),const Locale('ky'),const Locale('uz'),const Locale('lv'),const Locale('lt'), const Locale('et'), const Locale('de'),const Locale('fr'),const Locale('it'),const Locale('es'),const Locale('pt')],
      path: 'assets/translater/language',
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: MyApp()
    ),);
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {

      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
       SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: currentTheme.currentTheme == ThemeMode.dark
      ? CustomTheme.darkTheme.primaryColor
      : CustomTheme.lightTheme.primaryColor,
));
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          themeMode: currentTheme.currentTheme,
          initialRoute: '/Start',
          routes: {
            '/Registration': (context) => const DefiningPage(),
            '/Start': (context) => const Start()
          },
          debugShowCheckedModeBanner: false,
    );
  }
}


/**********************************************/
/* Это интуитивное мобильное приложение для чтения и публикации книг. Откройте мир литературы прямо с вашего устройства, где бы вы ни находились. С легкостью загружайте и читайте свои любимые книги из памяти устройства в различных форматах. */
/* © 2023 BookVerse. Все права защищены. */
/**********************************************/






  



