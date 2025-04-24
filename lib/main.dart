import 'package:flutter/material.dart';
import 'features/chat/presentation/pages/group_chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group Chat UI',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          useMaterial3: true,
          fontFamily: 'georgia'),
      debugShowCheckedModeBanner: false,
      home: const GroupChatPage(),
    );
  }
}
