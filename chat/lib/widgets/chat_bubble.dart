import 'package:chat/constants.dart';
import 'package:chat/models/messages_model.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message
  });
  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        // alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Text(
          message.message,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20
          ),
        ),
      ),
    );
  }
}

class ChatBubbleForFriend extends StatelessWidget {
  const ChatBubbleForFriend({
    super.key,
    required this.message
  });
  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        // alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: const BoxDecoration(
          color: Color(0xff006d84),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: Text(
          message.message,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20
          ),
        ),
      ),
    );
  }
}