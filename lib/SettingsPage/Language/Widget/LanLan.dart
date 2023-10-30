import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanLan extends StatefulWidget {
  const LanLan({super.key,
  required this.text,
  required this.onTaps,
  required this.isChecked,
  });
  final String text;
  final Function onTaps;
  final bool isChecked;


  @override
  State<LanLan> createState() => _LanLanState();
}

class _LanLanState extends State<LanLan> {
  @override
  Widget build(BuildContext context) {
    return Row(
  children: [
    Expanded(
      child: Text(
        widget.text.tr(),
        style: Theme.of(context).primaryTextTheme.bodyText1,
      ),
    ),
    //
    InkWell(
  onTap: () {
    setState(() {
      widget.onTaps();
    });
  },
  child: Container(
    width: 20, 
    height: 20, 
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        width: 2.0,
        color: widget.isChecked ? Colors.blue : Colors.grey, // Цвет границы внешнего круга
      ),
      color: widget.isChecked ? Colors.blue : Colors.transparent, // Цвет внешнего круга
    ),
    child: Center(
      child: Container(
        width: 10, 
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.isChecked ? Colors.white : Colors.transparent, // Цвет внутреннего круга
        ),
      ),
    ),
  ),
),
  ],
);
  }
}