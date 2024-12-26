import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class Counter extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Counter({super.key});

  @override
  State<Counter> createState() {
    return _CounterState();
  }
}

@NowaGenerated()
class _CounterState extends State<Counter> {
  int? counter = 0;

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
                spacing: 8.0,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlexSizedBox(
                    width: null,
                    height: null,
                    child: Text(
                      counter!.toString(),
                      style: const TextStyle(fontSize: 40.0),
                    ),
                  ),
                  FlexSizedBox(
                    child: Text(
                      counter! > 10 ? 'Big' : 'Small',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter = counter! + 1;
          setState(() {});
        },
        child: const Icon(
          IconData(57415, fontFamily: 'MaterialIcons'),
        ),
      ),
    );
  }
}
