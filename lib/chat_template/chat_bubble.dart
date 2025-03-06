import 'package:flutter/material.dart';
import 'package:nowa_sample/chat_template/message_model.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 295.0, 'auto-height': null})
class ChatBubble extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ChatBubble(
      {this.message = const MessageModel(
        isMe: true,
        msg: 'Mesage',
        time: '10:00',
      ),
      super.key});

  final MessageModel? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: message!.isMe!
              ? const Color(0xff262626)
              : Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16.0),
            topRight: const Radius.circular(16.0),
            bottomLeft: Radius.circular(message!.isMe! ? 16.0 : 0.0),
            bottomRight: Radius.circular(message!.isMe! ? 0.0 : 16.0),
          )),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 16.0,
          bottom: 16.0,
        ),
        child: NFlex(
          direction: Axis.vertical,
          spacing: 0.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlexSizedBox(
              height: null,
              child: Text(
                message?.msg ?? 'Message',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            FlexSizedBox(
              width: null,
              height: null,
              child: Align(
                alignment: const Alignment(1.0, 0.0),
                child: Text(
                  message?.time ?? '10:00',
                  style: const TextStyle(color: Color(0x80ffffff)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
