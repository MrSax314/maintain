import 'package:flutter/material.dart';
import 'exercise.dart';
import 'sset.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SSet s = new SSet(1,1,1);
  Set<SSet> t = new Set<SSet>();
  var temp = <SSet>{};

  Set<Exercise> exe = {
    Exercise('squat'),
    Exercise('deadlift'),
    Exercise('pull-up')
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Maintain',
          style: TextStyle(
          color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // ninja_level += 1;
            exe.first.sets.add(s);
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: exe.map((ex) {
            return Row(
              children: [
                Text(
                  'Exercise Name: ${ex.exerciseName}',
                  style: TextStyle(
                    color: Colors.white,
                ),),
                Text(
                  // ' hi',
                  '${ex.sets.elementAt(0).reps}',
                style: TextStyle(
                  color: Colors.pinkAccent,
                ),
              ),
            ]);
          }).toList(),
        )
      ),
    );
  }
}

