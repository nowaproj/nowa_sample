import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated({'auto-width': 347.0, 'auto-height': 524.0})
class NavPage1 extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const NavPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return NFlex(
      direction: Axis.vertical,
      spacing: 15.0,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FlexSizedBox(
          width: null,
          height: null,
          child: Text(
            'Page1',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const FlexSizedBox(
          width: 252.0,
          height: 218.0,
          child: Image(
            image: NetworkImage(
                'https://canary.contestimg.wish.com/api/webimage/5ddccb3c9a6f6e1cf8d7dd65-large.jpg?cache_buster=114b2b0b5893a0e736412075646fa5da'),
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
