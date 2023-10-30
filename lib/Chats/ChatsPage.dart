// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:readerabooks/Chats/MessageCards.dart';
import 'package:readerabooks/Chats/SettingsChat/SettingsChats.dart';

class ChatPages extends StatefulWidget {
  const ChatPages({super.key});

  @override
  State<ChatPages> createState() => _ChatPagesState();
}

class _ChatPagesState extends State<ChatPages> {
  final List<MessageCards> messages = [
    const MessageCards(text: "Привет!", isMyMessage: true),
    const MessageCards(text: "Привет, как дела?", isMyMessage: false),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
    const MessageCards(text: "У меня всё отлично!", isMyMessage: true),
  ];

  bool isVoice = false;

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingChats()),
              );
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
        title: Text(
          'Matthew Crow',
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
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return messages[index];
              },
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
                  onLongPress: () {
                    setState(() {
                      isVoice = true;
                    });
                  },
                  onLongPressEnd: (_) {
                    setState(() {
                      isVoice = false;
                    });
                  },
                  child: Container(
                    child: Icon(isVoice ? Icons.keyboard_voice : Icons.send),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
