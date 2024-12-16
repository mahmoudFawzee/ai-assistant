import 'package:ai_assistant_app/logic/them_cubit/theme_cubit.dart';
import 'package:ai_assistant_app/view/theme/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
  });
  final String message;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool?>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: state == true ? ColorsManger.white : ColorsManger.black,
          ),
          child: Text(
            message,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        );
      },
    );
  }
}
