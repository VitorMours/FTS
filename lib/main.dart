import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:frontend/app/provider/user_provider.dart';

import 'app/pages/home_page.dart';
import 'app/pages/login_page.dart';
import 'app/pages/signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => UserProvider()),
        ],
        child: MaterialApp(
            title: "VTasks",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(
                brightness: Brightness.light,
                seedColor: Colors.blueAccent,
              ),

              //floatingActionButtonTheme: FloatingACtionButtonThemeData()
            ),
            initialRoute: 'home',
            routes: {
              '/': (context) => const LoginPage(),
              'signup': (context) => const SignupPage(),
              'home': (context) => const HomePage()
            }));
  }
}
