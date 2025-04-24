import 'package:flutter_bloc/flutter_bloc.dart';
import 'chat_event.dart';
import 'chat_state.dart';
import '../widgets/chat_bubble.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc()
      : super(
          ChatState(
            messages: [
              MessageModel(
                picture:
                    'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                sender: "Lousiana",
                message: "Hey Tommy! How was your day?",
                time: "12:54",
                isSelf: false,
              ),
              MessageModel(
                picture:
                    'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                sender: "You",
                message: "Just finished work, feeling tired 😴",
                time: "13:02",
                isSelf: true,
              ),
              MessageModel(
                picture:
                    'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                sender: "Alex",
                message:
                    "Yes im good. thanks for asking. Didn’t do much. feeling bit sick after that meal. So just exhausted. watching netflux, 😢",
                time: "13:15",
                isSelf: false,
              ),
              MessageModel(
                picture:
                    'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                sender: "You",
                message:
                    "Yes, Im well. Had a long day. went hiking with the some people.it was  extremely hot couldn’t be bothered in the end. How r U?",
                time: "13:20",
                isSelf: true,
              ),
              MessageModel(
                picture:
                    'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                sender: "Lousiana",
                message:
                    "Yes im good. thanks for asking. Didn’t do much. feeling bit sick after that meal. So just exhausted. watching netflux",
                time: "13:25",
                isSelf: false,
              ),
              MessageModel(
                picture:
                    'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                sender: "Alex",
                message: "Just finished work, feeling tired",
                time: "13:15",
                isSelf: false,
              ),
              MessageModel(
                picture:
                    'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                sender: "You",
                message: "Hey Tommy! How was your day?",
                time: "13:20",
                isSelf: true,
              ),
              MessageModel(
                picture:
                    'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
                sender: "Lousiana",
                message: "Yes im good. thanks for asking.",
                time: "13:25",
                isSelf: false,
              ),
            ],
          ),
        ) {
    on<SendMessageEvent>((event, emit) {
      final newMessage = MessageModel(
        picture:
            'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fHww',
        sender: "You",
        message: event.text,
        time: DateTime.now().toString(),
        isSelf: true,
      );

      final updatedMessages = List<MessageModel>.from(state.messages)
        ..add(newMessage);
      emit(state.copyWith(messages: updatedMessages));
    });
  }
}
