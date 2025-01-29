import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:nowa_sample/chat_sample/chat_bubble.dart';
import 'dart:typed_data';

import 'package:nowa_sample/chat_sample/message.dart';

@NowaGenerated({'auto-width': 397.0})
class ChatPage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() {
    return _ChatPageState();
  }
}

@NowaGenerated()
class _ChatPageState extends State<ChatPage> {
  TextEditingController text = TextEditingController();

  List<Message?>? messages = [];

  void send() {
    messages?.add(Message(message: text.text, timestamp: DateTime.now()));
    text.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: NFlex(
                direction: Axis.vertical,
                spacing: 0.0,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlexSizedBox(
                    width: double.infinity,
                    flex: 1,
                    child: ListView.builder(
                      itemCount: messages?.length,
                      itemBuilder: (context, index) {
                        final Message? element = messages?.reversed.toList()[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                            top: 4.0,
                            bottom: 4.0,
                          ),
                          child: ChatBubble(
                            message: element,
                          ),
                        );
                      },
                      reverse: true,
                    ),
                  ),
                  FlexSizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                        top: 8.0,
                        bottom: 8.0,
                      ),
                      child: NFlex(
                        direction: Axis.horizontal,
                        spacing: 0.0,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlexSizedBox(
                            flex: 1,
                            width: 353.0,
                            child: TextFormField(
                              controller: text,
                              onEditingComplete: () {
                                send();
                              },
                            ),
                          ),
                          FlexSizedBox(
                            width: null,
                            height: null,
                            child: IconButton(
                              onPressed: () async {
                                final files = await showMediaPicker(
                                  context: context,
                                  sourceType: MediaSourceType.both,
                                  preferredCamera: CameraDevice.front,
                                );
                                if (files.isNotEmpty) {
                                  final Uint8List? bytes = await files.first.readAsBytes();
                                  messages?.add(Message(image: bytes!));
                                  setState(() {});
                                }
                              },
                              icon: const Icon(
                                IconData(58162, fontFamily: 'MaterialIcons'),
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          FlexSizedBox(
                            width: null,
                            height: null,
                            child: IconButton(
                              onPressed: () {
                                send();
                              },
                              icon: const Icon(
                                IconData(
                                  58737,
                                  fontFamily: 'MaterialIcons',
                                  matchTextDirection: true,
                                ),
                                color: Color(0xff000000),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Title',
        ),
        actions: [],
      ),
    );
  }
}
