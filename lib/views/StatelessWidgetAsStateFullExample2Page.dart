import 'package:flutter/material.dart';

class StatelessWidgetAsStateFullExample2 extends StatelessWidget {
  StatelessWidgetAsStateFullExample2({Key? key}) : super(key: key);

  ValueNotifier<int> count = new ValueNotifier<int>(0);
  ValueNotifier<bool> obsure = new ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('StatelessWidgetAsStateFull Example2'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          ValueListenableBuilder(
            valueListenable: obsure,
            builder: (context, value, child) {
              return TextFormField(
                obscureText: obsure.value,
                decoration: InputDecoration(
                  suffix: InkWell(
                    onTap: () {
                      obsure.value = !obsure.value;
                      print("clicked");
                    },
                    child: obsure.value
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                  hintText: "Email",
                ),
              );
            },
          ),
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
