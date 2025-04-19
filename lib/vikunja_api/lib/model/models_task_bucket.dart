//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsTaskBucket {
  /// Returns a new [ModelsTaskBucket] instance.
  ModelsTaskBucket({
    this.bucketId,
    this.projectViewId,
    this.taskDone,
    this.taskId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bucketId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? projectViewId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? taskDone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? taskId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsTaskBucket &&
    other.bucketId == bucketId &&
    other.projectViewId == projectViewId &&
    other.taskDone == taskDone &&
    other.taskId == taskId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucketId == null ? 0 : bucketId!.hashCode) +
    (projectViewId == null ? 0 : projectViewId!.hashCode) +
    (taskDone == null ? 0 : taskDone!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode);

  @override
  String toString() => 'ModelsTaskBucket[bucketId=$bucketId, projectViewId=$projectViewId, taskDone=$taskDone, taskId=$taskId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bucketId != null) {
      json[r'bucket_id'] = this.bucketId;
    } else {
      json[r'bucket_id'] = null;
    }
    if (this.projectViewId != null) {
      json[r'project_view_id'] = this.projectViewId;
    } else {
      json[r'project_view_id'] = null;
    }
    if (this.taskDone != null) {
      json[r'task_done'] = this.taskDone;
    } else {
      json[r'task_done'] = null;
    }
    if (this.taskId != null) {
      json[r'task_id'] = this.taskId;
    } else {
      json[r'task_id'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsTaskBucket] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsTaskBucket? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsTaskBucket[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsTaskBucket[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsTaskBucket(
        bucketId: mapValueOfType<int>(json, r'bucket_id'),
        projectViewId: mapValueOfType<int>(json, r'project_view_id'),
        taskDone: mapValueOfType<bool>(json, r'task_done'),
        taskId: mapValueOfType<int>(json, r'task_id'),
      );
    }
    return null;
  }

  static List<ModelsTaskBucket> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsTaskBucket>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsTaskBucket.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsTaskBucket> mapFromJson(dynamic json) {
    final map = <String, ModelsTaskBucket>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsTaskBucket.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsTaskBucket-objects as value to a dart map
  static Map<String, List<ModelsTaskBucket>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsTaskBucket>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsTaskBucket.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

