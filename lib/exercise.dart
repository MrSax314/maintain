import 'sset.dart';

class Exercise {
  String exerciseName = '';
  Set<SSet> sets = <SSet>{};

  Exercise(String name, Set<SSet> sets) {
    this.exerciseName = name;
    this.sets = sets;
  }
}