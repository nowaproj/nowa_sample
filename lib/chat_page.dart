import 'package:flutter/material.dart';
import 'package:nowa_sample/message.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
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
    messages?.add(Message(message: text.text));
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
                        final Message? element =
                            messages?.reversed.toList()[index];
                        return Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: const Color(0x66ffe1b0),
                            border: const Border(
                                bottom: BorderSide(
                                    color: Color(0xffc4c4c4), width: 1.0)),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Center(
                            child: Text(
                              element!.message!,
                            ),
                          ),
                        );
                      },
                      reverse: true,
                    ),
                  ),
                  FlexSizedBox(
                    width: double.infinity,
                    height: 48.0,
                    child: NFlex(
                      direction: Axis.horizontal,
                      spacing: 0.0,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlexSizedBox(
                          height: 42.0,
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
