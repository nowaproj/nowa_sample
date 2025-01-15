import 'package:shared_preferences/shared_preferences.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:nowa_sample/globals/app_state.dart';
import 'package:nowa_sample/chat_sample/chat_page.dart';
import 'package:nowa_sample/counter.dart';
import 'package:nowa_sample/local_storage.dart';
import 'package:nowa_sample/navigation_sample/navigation_sample.dart';
import 'package:nowa_sample/pages/home_page.dart';

@NowaGenerated()
late final SharedPreferences sharedPrefs;

@NowaGenerated()
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefs = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

@NowaGenerated({'visibleInNowa': false})
class MyApp extends StatelessWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
      create: (context) => AppState(),
      builder: (context, child) => MaterialApp(
        theme: AppState.of(context).theme,
        initialRoute: 'HomePage',
        routes: {
          'ChatPage': (context) => const ChatPage(),
          'Counter': (context) => const Counter(),
          'LocalStorage': (context) => const LocalStorage(),
          'NavigationSample': (context) => const NavigationSample(),
          'HomePage': (context) => const HomePage(),
        },
      ),
    );
  }
}
