import 'package:favourite_app_with_provider/providers/FavouriteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/ThemeChangerProvider.dart';
import 'views/StatelessWidgetAsStateFullExample2Page.dart';
import 'views/StatelessWidgetAsStateFullPage.dart';
import 'views/favouriteScreen.dart';
import 'views/themePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Register Provider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              appBarTheme: AppBarTheme(color: Colors.green),
              primaryColor: Colors.green,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.red,
              iconTheme: IconThemeData(
                color: Colors.pink,
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: StatelessWidgetAsStateFullExample2(),
          );
        },
      ),
    );
  }
}
