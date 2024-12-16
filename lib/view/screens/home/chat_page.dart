import 'package:ai_assistant_app/logic/name_cubit/name_cubit.dart';
import 'package:ai_assistant_app/view/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static const pageRoute = '/chat_screen';
  static final _controller = TextEditingController();
  void _startListening() {}
  void _handleUserInput(String text) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NameCubit, String>(
          builder: (context, state) {
            return Text(state);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return const ChatBubble(message: 'message',);
            },
            itemCount: 15,
          )),
          TextField(
            controller: _controller,
            onSubmitted: (text) => _handleUserInput(text),
            decoration: InputDecoration(
              hintText: 'Ask me anything...',
              suffixIcon: IconButton(
                icon: const Icon(Icons.mic),
                onPressed: _startListening,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
