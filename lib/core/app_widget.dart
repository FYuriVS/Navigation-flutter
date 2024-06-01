import 'package:flutter/material.dart';
import 'package:navegacao/core/navigator_keys.dart';
import 'package:navegacao/core/routes_config.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigatorKeys.navigatorKeyMain,
      routes: routes,
      title: 'Rotas',
      initialRoute: '/',
    );
  }
}
