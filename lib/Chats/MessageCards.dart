import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class MessageCards extends StatefulWidget {
  const MessageCards({super.key,
  required this.text,
  required this.isMyMessage,

  });
  final String text;
  final bool isMyMessage;

  @override
  State<MessageCards> createState() => _MessageCardsState();
}
class _MessageCardsState extends State<MessageCards> {
  @override
  Widget build(BuildContext context) {
    String limitedText = widget.text.length > 255
        ? widget.text.substring(0, 255)
        : widget.text;

    return  ChatBubble(
        clipper: widget.isMyMessage?  ChatBubbleClipper1(type: BubbleType.sendBubble): ChatBubbleClipper1(type: BubbleType.receiverBubble),
        alignment:widget.isMyMessage? Alignment.topRight: Alignment.topLeft,
        margin: const EdgeInsets.only(top: 20),
        backGroundColor: widget.isMyMessage? Colors.blue: Colors.green,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Text(
             widget.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      );
  }
}