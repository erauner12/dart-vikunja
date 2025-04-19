//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:vikunja_flutter_api/api.dart';
import 'package:test/test.dart';

// tests for ModelsTaskPosition
void main() {
  // final instance = ModelsTaskPosition();

  group('test ModelsTaskPosition', () {
    // The position of the task - any task project can be sorted as usual by this parameter. When accessing tasks via kanban buckets, this is primarily used to sort them based on a range We're using a float64 here to make it possible to put any task within any two other tasks (by changing the number). You would calculate the new position between two tasks with something like task3.position = (task2.position - task1.position) / 2. A 64-Bit float leaves plenty of room to initially give tasks a position with 2^16 difference to the previous task which also leaves a lot of room for rearranging and sorting later. Positions are always saved per view. They will automatically be set if you request the tasks through a view endpoint, otherwise they will always be 0. To update them, take a look at the Task Position endpoint.
    // num position
    test('to test the property `position`', () async {
      // TODO
    });

    // The project view this task is related to
    // int projectViewId
    test('to test the property `projectViewId`', () async {
      // TODO
    });

    // The ID of the task this position is for
    // int taskId
    test('to test the property `taskId`', () async {
      // TODO
    });


  });

}
