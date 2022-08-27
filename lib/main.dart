import 'package:favourite_app_with_provider/providers/FavouriteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/favouriteScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Register Provider
    return ChangeNotifierProvider(
      create: (_) => FavouriteProvider(),
      child: MaterialApp(
        home: FavouriteScreen(),
      ),
    );
  }
}
