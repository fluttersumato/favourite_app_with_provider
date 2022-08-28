import 'package:flutter/material.dart';

class StatelessWidgetAsStateFull extends StatelessWidget {
  StatelessWidgetAsStateFull({Key? key}) : super(key: key);

  ValueNotifier<int> count = new ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('StatelessWidgetAsStateFull'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: ValueListenableBuilder(
              valueListenable: count,
              builder: (context, value, child) {
                return Text(
                  'counter ${count.value.toString()}',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          FloatingActionButton(
            onPressed: () {
              count.value++;
              print(count.value.toString());
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
