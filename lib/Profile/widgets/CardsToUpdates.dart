import 'package:flutter/material.dart';
import 'package:readerabooks/Profile/Comments.dart';

class CardsToUpdates extends StatefulWidget {
  const CardsToUpdates({super.key});

  @override
  State<CardsToUpdates> createState() => _CardsToUpdatesState();
}

class _CardsToUpdatesState extends State<CardsToUpdates> {
  bool isHeartRed = false;

  void _toggleHeartColor() {
    setState(() {
      isHeartRed = !isHeartRed;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Matthew Crow в 11:00',
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                        ? const Color(0xFF6F6F6F)
                        : const Color(0xFF6F6F6F),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onDoubleTap: () {
                _toggleHeartColor();
              },
              child: Text(
                'Et Lorem id magna eu exercitation. Minim ullamco consequat elit ea dolor irure pariatur eu. Est dolore eu aliquip ipsum laborum. Dolor incididunt consectetur dolore nulla cillum. Dolor minim in id non aliqua elit enim nostrud veniam dolore. Incididunt exercitation commodo qui sint fugiat reprehenderit magna id labore cillum. Ullamco pariatur aute dolore ad anim veniam ex dolore minim.',
                style: TextStyle(
                  color:  Theme.of(context).brightness == Brightness.dark
                          ? const Color(0xFF6F6F6F)
                          : const Color(0xFF6F6F6F),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 4, right: 4),
              child: Divider(
                color: (Theme.of(context).brightness == Brightness.dark
                    ? const Color(0xFFBBC2CB)
                    : const Color(0xFF7A7C91)),
                height: 20,
                thickness: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    _toggleHeartColor();
                  },
                  child: Icon(
                    isHeartRed
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: isHeartRed ? Colors.red : const Color(0xFF6F6F6F),
                  ),
                ), //favorite
                SizedBox(width: 10),
                GestureDetector(
                  onTap: (){
                   
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Comments()),
            );


                  },
                  child: Icon(
                    Icons.comment,
                    color:  const Color(0xFF6F6F6F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}