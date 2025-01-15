import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class PageViewExample extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() {
    return _PageViewExampleState();
  }
}

@NowaGenerated()
class _PageViewExampleState extends State<PageViewExample> {
  PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0.0, 0.0),
          children: [
            Positioned(
              top: 95.0,
              left: 47.0,
              width: 299.0,
              height: 502.0,
              child: Stack(
                alignment: const Alignment(0.0, 0.0),
                children: [
                  PageView(
                    controller: pageController,
                    children: [
                      const Text(
                        'first page',
                      ),
                      const Text(
                        'second page',
                      )
                    ],
                  ),
                  const Positioned(
                    bottom: 8.0,
                    child: AnimatedSmoothIndicator(
                      count: 2,
                      activeIndex: 0,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 649.0,
              left: 156.5,
              height: 40.0,
              child: CustomButton(
                onPressed: () {},
                child: const Text(
                  'Next',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
