import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:nowa_sample/nav_page1.dart';
import 'package:nowa_sample/nav_page2.dart';

@NowaGenerated()
class NavigationSample extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const NavigationSample({super.key});

  @override
  State<NavigationSample> createState() {
    return _NavigationSampleState();
  }
}

@NowaGenerated()
class _NavigationSampleState extends State<NavigationSample> {
  int pageIndex = 0;

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
              child: IndexedStack(
                index: pageIndex,
                children: [const NavPage1(), const NavPage2()],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                IconData(58136, fontFamily: 'MaterialIcons'),
                color: Color(0xff000000),
              ),
              label: 'home'),
          const BottomNavigationBarItem(
              icon: Icon(
                IconData(57638, fontFamily: 'MaterialIcons'),
                color: Color(0xff000000),
              ),
              label: 'call')
        ],
        currentIndex: pageIndex,
        onTap: (value) {
          pageIndex = value;
          setState(() {});
        },
      ),
      appBar: AppBar(
        title: const Text(
          'Title',
        ),
      ),
    );
  }
}
