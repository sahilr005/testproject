import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testproject/core/const/app_const_assets.dart';
import 'package:testproject/features/chat/presentation/pages/appbar.dart';
import '../blocs/chat_bloc.dart';
import '../blocs/chat_event.dart';
import '../blocs/chat_state.dart';
import '../widgets/chat_bubble.dart';
import '../widgets/date_separator.dart';
import '../widgets/message_input_bar.dart';

class GroupChatPage extends StatelessWidget {
  const GroupChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChatBloc(),
      child: Stack(
        children: [
          Container(
            color: Color(0xffFFF8DC),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SvgPicture.asset(AppAssets.chatBgLines),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Column(
                children: [
                  TommyGroupUI(),
                  const DateSeparator(date: "10 July 2025"),
                  Expanded(
                    child: BlocBuilder<ChatBloc, ChatState>(
                      builder: (context, state) {
                        return ListView.builder(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          itemCount: state.messages.length,
                          itemBuilder: (context, index) {
                            return ChatBubble(message: state.messages[index]);
                          },
                        );
                      },
                    ),
                  ),
                  MessageInputBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
