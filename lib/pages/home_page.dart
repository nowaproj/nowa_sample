import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:nowa_sample/chat_sample/chat_page.dart';
import 'package:nowa_sample/local_storage.dart';

@NowaGenerated({'auto-width': 698.0})
class HomePage extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page 1',
        ),
      ),
      body: SafeArea(
        child: Stack(
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: NFlex(
                  direction: Axis.vertical,
                  spacing: 16.0,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FlexSizedBox(
                      width: 346.0,
                      height: 106.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ChatPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: NFlex(
                            direction: Axis.vertical,
                            spacing: 0.0,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlexSizedBox(
                                width: null,
                                height: null,
                                child: Text(
                                  'Chat App',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    FlexSizedBox(
                      width: 346.0,
                      height: 106.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LocalStorage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: NFlex(
                            direction: Axis.vertical,
                            spacing: 0.0,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlexSizedBox(
                                width: null,
                                height: null,
                                child: Text(
                                  'Local storage',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
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
            )
          ],
        ),
      ),
    );
  }
}
