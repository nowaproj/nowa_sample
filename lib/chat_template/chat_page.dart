import 'package:flutter/material.dart';
import 'package:nowa_sample/chat_template/message_model.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:nowa_sample/chat_template/chat_bubble.dart';

@NowaGenerated({'auto-width': 393.0, 'auto-height': 808.0})
class ChatPage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ChatPage({this.wawww = const [], super.key});

  final List<String?>? wawww;

  @override
  State<ChatPage> createState() {
    return _ChatPageState();
  }
}

@NowaGenerated()
class _ChatPageState extends State<ChatPage> {
  TextEditingController text = TextEditingController();

  List<MessageModel>? fullChat = [
    const MessageModel(
      msg: 'Hi How are you ? ',
      isMe: false,
      time: '10:00',
    ),
    const MessageModel(msg: 'Good What about You ', time: '10:07')
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NFlex(
          direction: Axis.vertical,
          spacing: 0.0,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlexSizedBox(
              width: double.infinity,
              height: 72.0,
              child: Container(
                decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface, borderRadius: BorderRadius.circular(0.0)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: NFlex(
                    direction: Axis.horizontal,
                    spacing: 0.0,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlexSizedBox(
                        height: 92.0,
                        flex: 1,
                        child: NFlex(
                          direction: Axis.horizontal,
                          spacing: 0.0,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlexSizedBox(
                              width: null,
                              height: null,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  IconData(
                                    62834,
                                    fontFamily: 'MaterialIcons',
                                    matchTextDirection: true,
                                  ),
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            FlexSizedBox(
                              height: 38.0,
                              flex: 1,
                              child: NFlex(
                                direction: Axis.horizontal,
                                spacing: 10.0,
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlexSizedBox(
                                    width: 38.0,
                                    height: 38.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0x2b000000),
                                        borderRadius: BorderRadius.circular(360.0),
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1506863530036-1efeddceb993?q=80&w=3144&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
                                      ),
                                    ),
                                  ),
                                  FlexSizedBox(
                                    height: 40.0,
                                    child: NFlex(
                                      direction: Axis.vertical,
                                      spacing: 0.0,
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        FlexSizedBox(
                                          width: null,
                                          height: null,
                                          child: Text(
                                            'Name Surname',
                                            style: Theme.of(context).textTheme.labelLarge,
                                          ),
                                        ),
                                        FlexSizedBox(
                                          width: null,
                                          height: null,
                                          child: Text(
                                            'Online',
                                            style: Theme.of(context).textTheme.labelSmall,
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
                      FlexSizedBox(
                        width: null,
                        height: null,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            IconData(60157, fontFamily: 'MaterialIcons'),
                            color: Color(0xff000000),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            FlexSizedBox(
              width: double.infinity,
              flex: 1,
              child: ListView.separated(
                itemCount: fullChat!.length,
                itemBuilder: (context, index) {
                  final MessageModel? element = fullChat?[fullChat!.length - index - 1];
                  return ChatBubble(
                    message: element,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8.0,
                  width: 20.0,
                ),
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 16.0,
                  bottom: 16.0,
                ),
                reverse: true,
              ),
            ),
            FlexSizedBox(
              width: double.infinity,
              height: 72.0,
              child: Container(
                decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface, borderRadius: BorderRadius.circular(0.0)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: NFlex(
                    direction: Axis.horizontal,
                    spacing: 10.0,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlexSizedBox(
                        width: null,
                        flex: 1,
                        child: TextFormField(
                          controller: text,
                          decoration: InputDecoration(
                            labelText: null,
                            hintText: 'type something...',
                            hintStyle: Theme.of(context).textTheme.labelMedium,
                            filled: true,
                            fillColor: const Color(0x0c000000),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(360.0),
                                borderSide: BorderSide(width: 1.0, color: Theme.of(context).colorScheme.primary)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(360.0), borderSide: const BorderSide(color: Color(0x00000000))),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          onEditingComplete: () {
                            send();
                          },
                        ),
                      ),
                      FlexSizedBox(
                        width: 46.0,
                        height: 46.0,
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
                            fill: null,
                          ),
                          color: null,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xfff5f5f5),
    );
  }

  void send() {
    fullChat?.add(MessageModel(msg: text.text, time: DateTime.now().format('jm')));
    text.clear();
    setState(() {});
  }
}
