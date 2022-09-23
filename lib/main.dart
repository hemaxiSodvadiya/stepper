import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stteper/screens/home_Page.dart';
import 'package:stteper/screens/splash_Page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.grey,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(
        const HomePage(),
      ));
  // runApp(
  //   const HomePage(),
  // );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xfff64538),
        primaryColorLight: Colors.red,
        accentColor: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        'Splash_Page': (context) => const Splash_Screen(),
        '/': (context) => const MainPage(),
      },
    );
  }
}
