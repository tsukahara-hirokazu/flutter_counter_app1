import 'package:counter_app_1/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App1",
      home: ChangeNotifierProvider<Counter>(
        create: (context) => Counter(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App1"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Counter:${counter.value}"),
            RaisedButton(
              child: Text("+"),
              onPressed: counter.increment,
            ),
            RaisedButton(
              child: Text("-"),
              onPressed: counter.decrement,
            ),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//        onPressed: counter.increment,
//      ),
    );
  }
}
