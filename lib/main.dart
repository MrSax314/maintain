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
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            print('you clicked me');
          },
          icon: Icon(
            Icons.access_alarm,
            color: Colors.red,
          ),
          label: Text(
              'alarm',
            style: TextStyle(
              color: Colors.lightGreen
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green[200],
        child: Text('click'),
      ),
    );
  }
}