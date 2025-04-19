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


/// tests for LabelsApi
void main() {
  // final instance = LabelsApi();

  group('tests for LabelsApi', () {
    // Get all labels a user has access to
    //
    // Returns all labels which are either created by the user or associated with a task the user has at least read-access to.
    //
    //Future<List<ModelsLabel>> labelsGet({ int page, int perPage, String s }) async
    test('test labelsGet', () async {
      // TODO
    });

    // Delete a label
    //
    // Delete an existing label. The user needs to be the creator of the label to be able to do this.
    //
    //Future<ModelsLabel> labelsIdDelete(int id) async
    test('test labelsIdDelete', () async {
      // TODO
    });

    // Gets one label
    //
    // Returns one label by its ID.
    //
    //Future<ModelsLabel> labelsIdGet(int id) async
    test('test labelsIdGet', () async {
      // TODO
    });

    // Update a label
    //
    // Update an existing label. The user needs to be the creator of the label to be able to do this.
    //
    //Future<ModelsLabel> labelsIdPut(int id, ModelsLabel label) async
    test('test labelsIdPut', () async {
      // TODO
    });

    // Create a label
    //
    // Creates a new label.
    //
    //Future<ModelsLabel> labelsPut(ModelsLabel label) async
    test('test labelsPut', () async {
      // TODO
    });

    // Update all labels on a task.
    //
    // Updates all labels on a task. Every label which is not passed but exists on the task will be deleted. Every label which does not exist on the task will be added. All labels which are passed and already exist on the task won't be touched.
    //
    //Future<ModelsLabelTaskBulk> tasksTaskIDLabelsBulkPost(int taskID, ModelsLabelTaskBulk label) async
    test('test tasksTaskIDLabelsBulkPost', () async {
      // TODO
    });

    // Get all labels on a task
    //
    // Returns all labels which are assicociated with a given task.
    //
    //Future<List<ModelsLabel>> tasksTaskLabelsGet(int task, { int page, int perPage, String s }) async
    test('test tasksTaskLabelsGet', () async {
      // TODO
    });

    // Remove a label from a task
    //
    // Remove a label from a task. The user needs to have write-access to the project to be able do this.
    //
    //Future<ModelsMessage> tasksTaskLabelsLabelDelete(int task, int label) async
    test('test tasksTaskLabelsLabelDelete', () async {
      // TODO
    });

    // Add a label to a task
    //
    // Add a label to a task. The user needs to have write-access to the project to be able do this.
    //
    //Future<ModelsLabelTask> tasksTaskLabelsPut(int task, ModelsLabelTask label) async
    test('test tasksTaskLabelsPut', () async {
      // TODO
    });

  });
}
