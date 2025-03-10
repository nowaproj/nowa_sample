import 'package:shared_preferences/shared_preferences.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:nowa_sample/globals/app_state.dart';
import 'package:nowa_sample/chat_template/chat_page.dart';
import 'package:nowa_sample/counter.dart';
import 'package:nowa_sample/forms_sample.dart';
import 'package:nowa_sample/local_storage.dart';
import 'package:nowa_sample/navigation_sample/navigation_sample.dart';
import 'package:nowa_sample/page_view_example.dart';
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
        routes: {
          'ChatPage': (context) => const ChatPage(),
          'Counter': (context) => const Counter(),
          'FormsSample': (context) => const FormsSample(),
          'LocalStorage': (context) => const LocalStorage(),
          'NavigationSample': (context) => const NavigationSample(),
          'PageViewExample': (context) => const PageViewExample(),
          'HomePage': (context) => const HomePage(),
        },
        initialRoute: 'HomePage',
      ),
    );
  }
}
