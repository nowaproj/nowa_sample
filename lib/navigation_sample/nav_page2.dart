import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 347.0, 'auto-height': 524.0})
class NavPage2 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const NavPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return NFlex(
      direction: Axis.vertical,
      spacing: 32.0,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FlexSizedBox(
          width: null,
          height: null,
          child: Text(
            'Page2',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        FlexSizedBox(
          width: 153.0,
          height: 187.0,
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xffc4c4c4),
                borderRadius: BorderRadius.circular(0.0)),
          ),
        )
      ],
    );
  }
}
