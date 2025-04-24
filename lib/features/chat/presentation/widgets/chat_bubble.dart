import 'package:flutter/material.dart';
import 'package:testproject/core/theme/app_colors.dart';

class MessageModel {
  final String sender;
  final String picture;
  final String message;
  final String time;
  final bool isSelf;

  MessageModel({
    required this.sender,
    required this.message,
    required this.picture,
    required this.time,
    required this.isSelf,
  });
}

class ChatBubble extends StatelessWidget {
  final MessageModel message;

  const ChatBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final align =
        message.isSelf ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final bg = message.isSelf ? Color(0xffFCC85F) : Color(0xffFDD991);
    final radius = message.isSelf
        ? const BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )
        : const BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          );

    return Column(
      crossAxisAlignment: align,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .7,
          margin: const EdgeInsets.symmetric(vertical: 4),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: radius,
            border: Border.all(color: Color(0xffA7E9DC)),
            boxShadow: [
              BoxShadow(
                color: Color(0xff0000001A).withOpacity(0.2),
                blurRadius: 4,
                spreadRadius: 0,
                offset: Offset(-2, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFFA6E9DB), width: 1),
                        shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        message.picture,
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    message.sender,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: getColorForSender(message.sender),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2),
              Text(
                message.message,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  message.time,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4A6F6A),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
