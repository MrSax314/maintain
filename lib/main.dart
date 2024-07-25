import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text('one')
          ),
          Container(
              padding: EdgeInsets.all(30),
              color: Colors.pinkAccent,
              child: Text('two')
          ),
          Container(
              padding: EdgeInsets.all(40),
              color: Colors.amber,
              child: Text('three')
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green[200],
        child: Text('click'),
      ),
    );
  }
}