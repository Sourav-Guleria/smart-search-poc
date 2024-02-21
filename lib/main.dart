import 'package:flutter/material.dart';
import 'package:smart_search/app/core/utils/colors.dart';
import 'package:smart_search/app/features/auth/presentation/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: CustomColors.appPrimaryColor),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
