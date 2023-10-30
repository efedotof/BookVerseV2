import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ScannerInput extends StatefulWidget {
  const ScannerInput({super.key});

  @override
  State<ScannerInput> createState() => _ScannerInputState();
}

class _ScannerInputState extends State<ScannerInput> {
  @override
Widget build(BuildContext context) {
  final backgroundColor = Theme.of(context).brightness == Brightness.dark ? const Color(0xFF131E34)  : Colors.white;

  return Center(
    child: Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.5,
 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: backgroundColor, // Используем определенный цвет фона
      ),
      child: PrettyQrView.data(
        data: 'lorem ipsum dolor sit amet',
        decoration: const PrettyQrDecoration(),
      ),
    ),
  );
}

}