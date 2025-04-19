//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsTaskPosition {
  /// Returns a new [ModelsTaskPosition] instance.
  ModelsTaskPosition({
    this.position,
    this.projectViewId,
    this.taskId,
  });

  /// The position of the task - any task project can be sorted as usual by this parameter. When accessing tasks via kanban buckets, this is primarily used to sort them based on a range We're using a float64 here to make it possible to put any task within any two other tasks (by changing the number). You would calculate the new position between two tasks with something like task3.position = (task2.position - task1.position) / 2. A 64-Bit float leaves plenty of room to initially give tasks a position with 2^16 difference to the previous task which also leaves a lot of room for rearranging and sorting later. Positions are always saved per view. They will automatically be set if you request the tasks through a view endpoint, otherwise they will always be 0. To update them, take a look at the Task Position endpoint.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? position;

  /// The project view this task is related to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? projectViewId;

  /// The ID of the task this position is for
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? taskId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsTaskPosition &&
    other.position == position &&
    other.projectViewId == projectViewId &&
    other.taskId == taskId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (position == null ? 0 : position!.hashCode) +
    (projectViewId == null ? 0 : projectViewId!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode);

  @override
  String toString() => 'ModelsTaskPosition[position=$position, projectViewId=$projectViewId, taskId=$taskId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.projectViewId != null) {
      json[r'project_view_id'] = this.projectViewId;
    } else {
      json[r'project_view_id'] = null;
    }
    if (this.taskId != null) {
      json[r'task_id'] = this.taskId;
    } else {
      json[r'task_id'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsTaskPosition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsTaskPosition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsTaskPosition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsTaskPosition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsTaskPosition(
        position: num.parse('${json[r'position']}'),
        projectViewId: mapValueOfType<int>(json, r'project_view_id'),
        taskId: mapValueOfType<int>(json, r'task_id'),
      );
    }
    return null;
  }

  static List<ModelsTaskPosition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsTaskPosition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsTaskPosition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsTaskPosition> mapFromJson(dynamic json) {
    final map = <String, ModelsTaskPosition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsTaskPosition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsTaskPosition-objects as value to a dart map
  static Map<String, List<ModelsTaskPosition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsTaskPosition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsTaskPosition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

