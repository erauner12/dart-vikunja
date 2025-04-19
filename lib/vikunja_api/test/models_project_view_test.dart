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

// tests for ModelsProjectView
void main() {
  // final instance = ModelsProjectView();

  group('test ModelsProjectView', () {
    // When the bucket configuration mode is not `manual`, this field holds the options of that configuration.
    // List<ModelsProjectViewBucketConfiguration> bucketConfiguration (default value: const [])
    test('to test the property `bucketConfiguration`', () async {
      // TODO
    });

    // The bucket configuration mode. Can be `none`, `manual` or `filter`. `manual` allows to move tasks between buckets as you normally would. `filter` creates buckets based on a filter for each bucket.
    // ModelsBucketConfigurationModeKind bucketConfigurationMode
    test('to test the property `bucketConfigurationMode`', () async {
      // TODO
    });

    // A timestamp when this reaction was created. You cannot change this value.
    // String created
    test('to test the property `created`', () async {
      // TODO
    });

    // The ID of the bucket where new tasks without a bucket are added to. By default, this is the leftmost bucket in a view.
    // int defaultBucketId
    test('to test the property `defaultBucketId`', () async {
      // TODO
    });

    // If tasks are moved to the done bucket, they are marked as done. If they are marked as done individually, they are moved into the done bucket.
    // int doneBucketId
    test('to test the property `doneBucketId`', () async {
      // TODO
    });

    // The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation.
    // String filter
    test('to test the property `filter`', () async {
      // TODO
    });

    // The unique numeric id of this view
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // The position of this view in the list. The list of all views will be sorted by this parameter.
    // num position
    test('to test the property `position`', () async {
      // TODO
    });

    // The project this view belongs to
    // int projectId
    test('to test the property `projectId`', () async {
      // TODO
    });

    // The title of this view
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // A timestamp when this view was updated. You cannot change this value.
    // String updated
    test('to test the property `updated`', () async {
      // TODO
    });

    // The kind of this view. Can be `list`, `gantt`, `table` or `kanban`.
    // ModelsProjectViewKind viewKind
    test('to test the property `viewKind`', () async {
      // TODO
    });


  });

}
