import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:nowa_sample/main.dart';

int get myGetter {
  return 1;
}

@NowaGenerated({'auto-width': 393.0})
class LocalStorage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const LocalStorage({super.key});

  @override
  State<LocalStorage> createState() {
    return _LocalStorageState();
  }
}

@NowaGenerated()
class _LocalStorageState extends State<LocalStorage> {
  TextEditingController text = TextEditingController();

  String? savedVar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              width: 246.0,
              height: 243.0,
              left: 73.5,
              top: 182.0,
              child: NFlex(
                direction: Axis.vertical,
                spacing: 48.0,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FlexSizedBox(
                    width: 246.0,
                    height: null,
                    child: TextFormField(
                      controller: text,
                    ),
                  ),
                  FlexSizedBox(
                    child: NFlex(
                      direction: Axis.horizontal,
                      spacing: 50.0,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlexSizedBox(
                          width: null,
                          height: 40.0,
                          child: CustomButton(
                            onPressed: () {
                              sharedPrefs.setString('test', text.text);
                            },
                            child: const Text(
                              'Save',
                            ),
                          ),
                        ),
                        FlexSizedBox(
                          width: null,
                          height: 40.0,
                          child: CustomButton(
                            onPressed: () {
                              savedVar = sharedPrefs.getString('test');
                              setState(() {});
                            },
                            child: const Text(
                              'Load',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  FlexSizedBox(
                    width: null,
                    height: null,
                    child: Text(
                      savedVar ?? '[[Nothing]]',
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 562.0,
              left: 32.0,
              width: 329.0,
              height: 202.0,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffc4c4c4),
                    borderRadius: BorderRadius.circular(0.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
