import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:readerabooks/SettingsPage/Language/Widget/LanLan.dart';

class LanguageSettings extends StatefulWidget {
  const LanguageSettings({super.key});

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  bool isLoadingLanguage = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _changeLanguageAndShowLoadingIndicator(
      BuildContext context, String languageCode) {
    setState(() {
      isLoadingLanguage = true;
    });
    context.setLocale(Locale(languageCode));

    Future.delayed(const Duration(microseconds: 3), () {
      setState(() {
        isLoadingLanguage = false;
      });
    });
  }

  List<String> nameTextLanguage = <String>[
    'rulan',
    'uklan',
    'enlan',
    'belan',
    'kklan',
    'hylan',
    'kalan',
    'azlan',
    'molan',
    'tglan',
    'kylan',
    'uzlan',
    'lvlan',
    'ltlan',
    'etlan',
    'delan',
    'frlan',
    'itlan',
    'eslan',
    'ptlan',
  ];

  List<String> languageName = <String>[
    'ru',
    'uk',
    'en',
    'be',
    'kk',
    'hy',
    'ka',
    'az',
    'mo',
    'tg',
    'ky',
    'uz',
    'lv',
    'lt',
    'et',
    'de',
    'fr',
    'it',
    'es',
    'pt',
  ];

  int selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return isLoadingLanguage
        ? Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(Icons.chevron_left),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                'LanguageLabelToSettings'.tr(),
                style: Theme.of(context).primaryTextTheme.bodyText1,
              ),
            ),
            backgroundColor: Theme.of(context).primaryColor,
            body: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: List.generate(
                      nameTextLanguage.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: LanLan(
                          text: nameTextLanguage[index],
                          onTaps: () {
                            selectindex = index;

                            _changeLanguageAndShowLoadingIndicator(
                                context, languageName[index]);
                          },
                          isChecked: selectindex == index ? true : false,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
