//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsTaskRelation {
  /// Returns a new [ModelsTaskRelation] instance.
  ModelsTaskRelation({
    this.created,
    this.createdBy,
    this.otherTaskId,
    this.relationKind,
    this.taskId,
  });

  /// A timestamp when this label was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The user who created this relation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserUser? createdBy;

  /// The ID of the other task, the task which is being related.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? otherTaskId;

  /// The kind of the relation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsRelationKind? relationKind;

  /// The ID of the \"base\" task, the task which has a relation to another.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? taskId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsTaskRelation &&
    other.created == created &&
    other.createdBy == createdBy &&
    other.otherTaskId == otherTaskId &&
    other.relationKind == relationKind &&
    other.taskId == taskId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (otherTaskId == null ? 0 : otherTaskId!.hashCode) +
    (relationKind == null ? 0 : relationKind!.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode);

  @override
  String toString() => 'ModelsTaskRelation[created=$created, createdBy=$createdBy, otherTaskId=$otherTaskId, relationKind=$relationKind, taskId=$taskId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.createdBy != null) {
      json[r'created_by'] = this.createdBy;
    } else {
      json[r'created_by'] = null;
    }
    if (this.otherTaskId != null) {
      json[r'other_task_id'] = this.otherTaskId;
    } else {
      json[r'other_task_id'] = null;
    }
    if (this.relationKind != null) {
      json[r'relation_kind'] = this.relationKind;
    } else {
      json[r'relation_kind'] = null;
    }
    if (this.taskId != null) {
      json[r'task_id'] = this.taskId;
    } else {
      json[r'task_id'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsTaskRelation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsTaskRelation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsTaskRelation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsTaskRelation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsTaskRelation(
        created: mapValueOfType<String>(json, r'created'),
        createdBy: UserUser.fromJson(json[r'created_by']),
        otherTaskId: mapValueOfType<int>(json, r'other_task_id'),
        relationKind: ModelsRelationKind.fromJson(json[r'relation_kind']),
        taskId: mapValueOfType<int>(json, r'task_id'),
      );
    }
    return null;
  }

  static List<ModelsTaskRelation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsTaskRelation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsTaskRelation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsTaskRelation> mapFromJson(dynamic json) {
    final map = <String, ModelsTaskRelation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsTaskRelation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsTaskRelation-objects as value to a dart map
  static Map<String, List<ModelsTaskRelation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsTaskRelation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsTaskRelation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

