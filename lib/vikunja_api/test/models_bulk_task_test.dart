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

// tests for ModelsBulkTask
void main() {
  // final instance = ModelsBulkTask();

  group('test ModelsBulkTask', () {
    // An array of users who are assigned to this task
    // List<UserUser> assignees (default value: const [])
    test('to test the property `assignees`', () async {
      // TODO
    });

    // All attachments this task has. This property is read-onlym, you must use the separate endpoint to add attachments to a task.
    // List<ModelsTaskAttachment> attachments (default value: const [])
    test('to test the property `attachments`', () async {
      // TODO
    });

    // The bucket id. Will only be populated when the task is accessed via a view with buckets. Can be used to move a task between buckets. In that case, the new bucket must be in the same view as the old one.
    // int bucketId
    test('to test the property `bucketId`', () async {
      // TODO
    });

    // If this task has a cover image, the field will return the id of the attachment that is the cover image.
    // int coverImageAttachmentId
    test('to test the property `coverImageAttachmentId`', () async {
      // TODO
    });

    // A timestamp when this task was created. You cannot change this value.
    // String created
    test('to test the property `created`', () async {
      // TODO
    });

    // The user who initially created the task.
    // UserUser createdBy
    test('to test the property `createdBy`', () async {
      // TODO
    });

    // The task description.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Whether a task is done or not.
    // bool done
    test('to test the property `done`', () async {
      // TODO
    });

    // The time when a task was marked as done.
    // String doneAt
    test('to test the property `doneAt`', () async {
      // TODO
    });

    // The time when the task is due.
    // String dueDate
    test('to test the property `dueDate`', () async {
      // TODO
    });

    // When this task ends.
    // String endDate
    test('to test the property `endDate`', () async {
      // TODO
    });

    // The task color in hex
    // String hexColor
    test('to test the property `hexColor`', () async {
      // TODO
    });

    // The unique, numeric id of this task.
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // The task identifier, based on the project identifier and the task's index
    // String identifier
    test('to test the property `identifier`', () async {
      // TODO
    });

    // The task index, calculated per project
    // int index
    test('to test the property `index`', () async {
      // TODO
    });

    // True if a task is a favorite task. Favorite tasks show up in a separate \"Important\" project. This value depends on the user making the call to the api.
    // bool isFavorite
    test('to test the property `isFavorite`', () async {
      // TODO
    });

    // An array of labels which are associated with this task. This property is read-only, you must use the separate endpoint to add labels to a task.
    // List<ModelsLabel> labels (default value: const [])
    test('to test the property `labels`', () async {
      // TODO
    });

    // Determines how far a task is left from being done
    // num percentDone
    test('to test the property `percentDone`', () async {
      // TODO
    });

    // The position of the task - any task project can be sorted as usual by this parameter. When accessing tasks via views with buckets, this is primarily used to sort them based on a range. Positions are always saved per view. They will automatically be set if you request the tasks through a view endpoint, otherwise they will always be 0. To update them, take a look at the Task Position endpoint.
    // num position
    test('to test the property `position`', () async {
      // TODO
    });

    // The task priority. Can be anything you want, it is possible to sort by this later.
    // int priority
    test('to test the property `priority`', () async {
      // TODO
    });

    // The project this task belongs to.
    // int projectId
    test('to test the property `projectId`', () async {
      // TODO
    });

    // Reactions on that task.
    // Map<String, List<UserUser>> reactions
    test('to test the property `reactions`', () async {
      // TODO
    });

    // All related tasks, grouped by their relation kind
    // Map<String, List<ModelsTask>> relatedTasks
    test('to test the property `relatedTasks`', () async {
      // TODO
    });

    // An array of reminders that are associated with this task.
    // List<ModelsTaskReminder> reminders (default value: const [])
    test('to test the property `reminders`', () async {
      // TODO
    });

    // An amount in seconds this task repeats itself. If this is set, when marking the task as done, it will mark itself as \"undone\" and then increase all remindes and the due date by its amount.
    // int repeatAfter
    test('to test the property `repeatAfter`', () async {
      // TODO
    });

    // Can have three possible values which will trigger when the task is marked as done: 0 = repeats after the amount specified in repeat_after, 1 = repeats all dates each months (ignoring repeat_after), 3 = repeats from the current date rather than the last set date.
    // ModelsTaskRepeatMode repeatMode
    test('to test the property `repeatMode`', () async {
      // TODO
    });

    // When this task starts.
    // String startDate
    test('to test the property `startDate`', () async {
      // TODO
    });

    // The subscription status for the user reading this task. You can only read this property, use the subscription endpoints to modify it. Will only returned when retrieving one task.
    // ModelsSubscription subscription
    test('to test the property `subscription`', () async {
      // TODO
    });

    // A project of task ids to update
    // List<int> taskIds (default value: const [])
    test('to test the property `taskIds`', () async {
      // TODO
    });

    // The task text. This is what you'll see in the project.
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // A timestamp when this task was last updated. You cannot change this value.
    // String updated
    test('to test the property `updated`', () async {
      // TODO
    });


  });

}
