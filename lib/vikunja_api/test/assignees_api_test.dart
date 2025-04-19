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


/// tests for AssigneesApi
void main() {
  // final instance = AssigneesApi();

  group('tests for AssigneesApi', () {
    // Add multiple new assignees to a task
    //
    // Adds multiple new assignees to a task. The assignee needs to have access to the project, the doer must be able to edit this task. Every user not in the project will be unassigned from the task, pass an empty array to unassign everyone.
    //
    //Future<ModelsTaskAssginee> tasksTaskIDAssigneesBulkPost(int taskID, ModelsBulkAssignees assignee) async
    test('test tasksTaskIDAssigneesBulkPost', () async {
      // TODO
    });

    // Get all assignees for a task
    //
    // Returns an array with all assignees for this task.
    //
    //Future<List<UserUser>> tasksTaskIDAssigneesGet(int taskID, { int page, int perPage, String s }) async
    test('test tasksTaskIDAssigneesGet', () async {
      // TODO
    });

    // Add a new assignee to a task
    //
    // Adds a new assignee to a task. The assignee needs to have access to the project, the doer must be able to edit this task.
    //
    //Future<ModelsTaskAssginee> tasksTaskIDAssigneesPut(int taskID, ModelsTaskAssginee assignee) async
    test('test tasksTaskIDAssigneesPut', () async {
      // TODO
    });

    // Delete an assignee
    //
    // Un-assign a user from a task.
    //
    //Future<ModelsMessage> tasksTaskIDAssigneesUserIDDelete(int taskID, int userID) async
    test('test tasksTaskIDAssigneesUserIDDelete', () async {
      // TODO
    });

  });
}
