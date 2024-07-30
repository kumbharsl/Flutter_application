import 'package:e_commerce_app/screens/main_screen.dart';
import 'package:e_commerce_app/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => ProductProvider()),
        // ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      // child: MyApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopping App",
      theme: Themes.light,
      themeMode: ThemeMode.light,
      home: MainScreen(),
    );
  }
}
