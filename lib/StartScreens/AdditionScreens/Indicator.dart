import 'package:flutter/widgets.dart';

class Indicator extends StatelessWidget {
  final bool isCurrentPage;

  Indicator({required this.isCurrentPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.0,
      height: 10.0,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCurrentPage ? const Color(0xFF090909) : const Color(0xFFB7B7B7),
      ),
    );
  }
}