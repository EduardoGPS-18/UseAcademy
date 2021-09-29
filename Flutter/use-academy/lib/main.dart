import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'data/usecases/usecases.dart';
import 'infra/infra.dart';
import 'presentation/presenters/presenters.dart';
import 'ui/components/components.dart';
import 'ui/pages/pages.dart';

void main() async {
  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  }
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      title: 'Use Academy',
      theme: AppTheme.lightThemeData,
      darkTheme: AppTheme.darkThemeData,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => HomePage(
              presenter: GetxHomePresenter(
                loadPeople: RemoteLoadPeople(
                  httpClient: HttpAdapter(client: Client()),
                  url: 'https://6140bdba357db50017b3d87d.mockapi.io/people',
                ),
              ),
            ),
        '/profile': (context) => ProfilePage(
              presenter: StreamProfilePresenter(),
            ),
      },
    );
  }
}
