import 'package:flutter/material.dart';
import 'package:provider_examples/common/theme.dart';
import 'package:provider_examples/screens/home_screen.dart';


void main() {
  runApp(
    ProviderExamples(),
  );
}

class ProviderExamples extends StatelessWidget {
  const ProviderExamples({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Provider Examples",
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/' : (context) => HomeScreen(),
      },
    );
  }
}
