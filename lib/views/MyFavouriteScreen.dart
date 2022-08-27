import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/FavouriteProvider.dart';

class MyFavouriteScreen extends StatefulWidget {
  const MyFavouriteScreen({Key? key}) : super(key: key);

  @override
  State<MyFavouriteScreen> createState() => _MyFavouriteScreenState();
}

class _MyFavouriteScreenState extends State<MyFavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('My Favourite'),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: favouriteProvider.selectedItems.length,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteProvider>(
                      builder: (context, provider, child) {
                    print("only this widget rebuild");
                    return ListTile(
                      onTap: () {
                        provider.selectedItems.contains(index)
                            ? provider.RemoveIndex(index)
                            : provider.AddIndex(index);
                        print("clicked $index");
                      },
                      title: Text('item $index'),
                      trailing: provider.selectedItems.contains(index)
                          ? Icon(Icons.favorite)
                          : Icon(Icons.favorite_outline),
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
