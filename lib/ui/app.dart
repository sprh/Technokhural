import 'package:flutter/material.dart';
import 'package:technokhural_flutter_demo/ui/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: const Scaffold(body: HomeWidget()),
      );
}
