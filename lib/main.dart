import 'package:flutter/material.dart';

void main() => runApp(ListWheelScrollViewApp());

class ListWheelScrollViewApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('List Wheel Scroll View'),
      ),
      body: new Center(
        child: new ListWheelScrollView.useDelegate(
          itemExtent: 200,
          childDelegate: ListWheelChildLoopingListDelegate(
            children: List<Widget>.generate(
              20,
              (index) => Image(
                image: NetworkImage('https://fakeimg.pl/200x100/?retina=1&text=$index'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
