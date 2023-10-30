import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';
import 'package:readerabooks/Scanner/ScannerInput.dart';

class PageQrCode extends StatefulWidget {
  const PageQrCode({super.key});

  @override
  State<PageQrCode> createState() => _PageQrCodeState();
}

class _PageQrCodeState extends State<PageQrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons
              .chevron_left), // Замените "new_icon" на иконку, которую вы хотите использовать
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('TitleOnScanntoScannerQr'.tr(),
            style: Theme.of(context).primaryTextTheme.bodyText1),
      ),
      body: ScannerInput()
      
    );
  }
}
