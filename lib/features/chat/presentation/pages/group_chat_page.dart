import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testproject/core/const/app_const_assets.dart';
import 'package:testproject/core/helper/date_time_formate.dart';
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
                  AppAppBar(),
                  Expanded(
                    child: BlocBuilder<ChatBloc, ChatState>(
                      builder: (context, state) {
                        final grouped = <String, List<MessageModel>>{};
                        for (var message in state.messages) {
                          final dateKey = extractDate(message.time);
                          grouped.putIfAbsent(dateKey, () => []).add(message);
                        }

                        final items = <Widget>[];
                        grouped.forEach((date, messages) {
                          items.add(DateSeparator(date: date));
                          for (var message in messages) {
                            items.add(ChatBubble(message: message));
                          }
                        });

                        return ListView(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          children: items,
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
