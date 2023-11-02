import 'package:flutter/material.dart';

class CommentItem extends StatefulWidget {
  final String comment;

  CommentItem({required this.comment});

  @override
  State<CommentItem> createState() => _CommentItemState();
}

class _CommentItemState extends State<CommentItem> {
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Theme.of(context).primaryColor.withOpacity(0.8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name Author', style: Theme.of(context).primaryTextTheme.bodyText1),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      'Labore deserunt ex ut ullamco anim irure tempor eu ex occaecat voluptate tempor esse. Esse non adipisicing aliquip labore dolor tempor velit. Nulla eiusmod aliquip tempor do. Proident esse proident aute elit. Ad dolor dolore est sunt. Sunt laborum enim dolor non quis. Proident qui pariatur pariatur ad laboris velit nisi anim nulla tempor nisi velit reprehenderit non. Nulla sit consectetur elit dolor cillum.',
                      style: Theme.of(context).primaryTextTheme.bodyText2, maxLines: 255,
                    ),
                  ),
                  
                ],
              ),
            ],
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
                 
  
                  },
                  child: Icon(
                    Icons.reply,
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