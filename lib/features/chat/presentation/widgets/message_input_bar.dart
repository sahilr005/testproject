import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testproject/features/chat/presentation/widgets/CustomInputField.dart';
import '../blocs/chat_bloc.dart';
import '../blocs/chat_event.dart';

class MessageInputBar extends StatefulWidget {
  const MessageInputBar({super.key});

  @override
  State<MessageInputBar> createState() => _MessageInputBarState();
}

class _MessageInputBarState extends State<MessageInputBar> {
  final _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.trim().isNotEmpty) {
      context.read<ChatBloc>().add(SendMessageEvent(_controller.text.trim()));
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomInputField(controller: _controller);
  }
}
