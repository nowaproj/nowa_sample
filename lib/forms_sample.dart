import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class FormsSample extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const FormsSample({super.key});

  @override
  State<FormsSample> createState() {
    return _FormsSampleState();
  }
}

@NowaGenerated()
class _FormsSampleState extends State<FormsSample> {
  TextEditingController text = TextEditingController();

  TextEditingController text1 = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  DateTime? datee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 468.0,
              left: 149.5,
              height: 40.0,
              child: CustomButton(
                onPressed: () {},
                child: const Text(
                  'Button',
                ),
              ),
            ),
            Positioned(
              top: 223.0,
              left: 66.0,
              width: 261.0,
              child: Form(
                key: formKey,
                child: NFlex(
                  direction: Axis.vertical,
                  spacing: 24.0,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FlexSizedBox(
                      width: 261.0,
                      height: null,
                      child: TextFormField(
                        controller: text,
                      ),
                    ),
                    FlexSizedBox(
                      width: 261.0,
                      height: null,
                      child: TextFormField(
                        controller: text1,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 95.0,
              left: 21.5,
              width: 350.0,
              height: 40.0,
              child: NSlider(
                value: 0.2,
                onChanged: (value) => null,
                sliderHeight: 2.2,
                thumbRadius: 9.1,
                overlayRadius: 0.0,
                label: 'Hehe',
                divisions: null,
                thumbColor: Theme.of(context).colorScheme.primary,
                activeColor: Theme.of(context).colorScheme.secondary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
