import 'package:flutter/material.dart';

import 'widgets/CardsToCommentItem.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  List<String> comments = [
    "Comment 1",
    "Comment 2",
    "Comment 3",
    "Comment 4",
    "Comment 5",
    "Comment 1",
    "Comment 2",
    "Comment 3",
    "Comment 4",
    "Comment 5",
    "Comment 1",
    "Comment 2",
    "Comment 3",
    "Comment 4",
    "Comment 5",
    "Comment 1",
    "Comment 2",
    "Comment 3",
    "Comment 4",
    "Comment 5",
    "Comment 1",
    "Comment 2",
    "Comment 3",
    "Comment 4",
    "Comment 5",
    "Comment 1",
    "Comment 2",
    "Comment 3",
    "Comment 4",
    "Comment 5",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Убираем верхнюю тень
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
        title: Text(
          'Запись',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.black.withOpacity(0.2), // Цвет фона тени
            height: 1, // Высота тени
          ),
          preferredSize: Size.fromHeight(1), // Высота тени
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView(
              children: List.generate(comments.length, (index) => CommentItem(comment:comments[index])),
            ),
          ),


           Container(
    
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF4188F5),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Введите сообщение...',
                      border: InputBorder.none
                    ),
                  ),
                ),
                GestureDetector(
                 
                  child: Container(
                    child: Icon(Icons.send),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
