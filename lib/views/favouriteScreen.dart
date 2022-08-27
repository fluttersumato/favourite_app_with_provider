import 'package:favourite_app_with_provider/providers/FavouriteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favouriteProvider=Provider.of<FavouriteProvider>(context);
    print('build');
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Favourite with Provider'),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(itemCount: 100,itemBuilder: (context, index) {
                return ListTile(
                  onTap: (){
                    favouriteProvider.AddIndex(index);
                    print("clicked $index");
                  },
                  title: Text('item $index'),
                  trailing: favouriteProvider.selectedItems.contains(index) ? Icon(Icons.favorite):Icon(Icons.favorite_outline),
                );
              },),
            ),
          ],
        ),
      ),
    );
  }
}
