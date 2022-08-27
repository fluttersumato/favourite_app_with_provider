import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
List<int> selectedItems=[];
  @override
  Widget build(BuildContext context) {
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
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  onTap: (){
                    selectedItems.add(index);
                    print("clicked $index");
                  },
                  title: Text('item $index'),
                  trailing: Icon(Icons.favorite_outline),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
