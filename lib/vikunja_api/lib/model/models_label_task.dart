//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsLabelTask {
  /// Returns a new [ModelsLabelTask] instance.
  ModelsLabelTask({
    this.created,
    this.labelId,
  });

  /// A timestamp when this task was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The label id you want to associate with a task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? labelId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsLabelTask &&
    other.created == created &&
    other.labelId == labelId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (labelId == null ? 0 : labelId!.hashCode);

  @override
  String toString() => 'ModelsLabelTask[created=$created, labelId=$labelId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.labelId != null) {
      json[r'label_id'] = this.labelId;
    } else {
      json[r'label_id'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsLabelTask] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsLabelTask? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsLabelTask[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsLabelTask[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsLabelTask(
        created: mapValueOfType<String>(json, r'created'),
        labelId: mapValueOfType<int>(json, r'label_id'),
      );
    }
    return null;
  }

  static List<ModelsLabelTask> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsLabelTask>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsLabelTask.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsLabelTask> mapFromJson(dynamic json) {
    final map = <String, ModelsLabelTask>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsLabelTask.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsLabelTask-objects as value to a dart map
  static Map<String, List<ModelsLabelTask>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsLabelTask>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsLabelTask.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

