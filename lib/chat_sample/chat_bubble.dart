import 'package:flutter/material.dart';
import 'package:nowa_sample/chat_sample/message.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'dart:typed_data';

@NowaGenerated({'auto-width': 332.0, 'auto-height': 36.0})
class ChatBubble extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ChatBubble({this.message = const Message(), super.key});

  final Message? message;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
          top: 8.0,
          bottom: 8.0,
        ),
        child: NFlex(
          direction: Axis.vertical,
          spacing: 0.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlexSizedBox(
              width: double.infinity,
              height: null,
              child: Text(
                message!.message!,
              ),
            ),
            FlexSizedBox(
              width: null,
              height: null,
              child: Image(
                image: MemoryImage(message?.image ?? Uint8List(0)),
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  decoration: BoxDecoration(
                      color: null, borderRadius: BorderRadius.circular(0.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
