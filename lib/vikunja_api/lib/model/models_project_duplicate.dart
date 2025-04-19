//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsProjectDuplicate {
  /// Returns a new [ModelsProjectDuplicate] instance.
  ModelsProjectDuplicate({
    this.duplicatedProject,
    this.parentProjectId,
  });

  /// The copied project
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsProject? duplicatedProject;

  /// The target parent project
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parentProjectId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsProjectDuplicate &&
    other.duplicatedProject == duplicatedProject &&
    other.parentProjectId == parentProjectId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duplicatedProject == null ? 0 : duplicatedProject!.hashCode) +
    (parentProjectId == null ? 0 : parentProjectId!.hashCode);

  @override
  String toString() => 'ModelsProjectDuplicate[duplicatedProject=$duplicatedProject, parentProjectId=$parentProjectId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.duplicatedProject != null) {
      json[r'duplicated_project'] = this.duplicatedProject;
    } else {
      json[r'duplicated_project'] = null;
    }
    if (this.parentProjectId != null) {
      json[r'parent_project_id'] = this.parentProjectId;
    } else {
      json[r'parent_project_id'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsProjectDuplicate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsProjectDuplicate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsProjectDuplicate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsProjectDuplicate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsProjectDuplicate(
        duplicatedProject: ModelsProject.fromJson(json[r'duplicated_project']),
        parentProjectId: mapValueOfType<int>(json, r'parent_project_id'),
      );
    }
    return null;
  }

  static List<ModelsProjectDuplicate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsProjectDuplicate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsProjectDuplicate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsProjectDuplicate> mapFromJson(dynamic json) {
    final map = <String, ModelsProjectDuplicate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsProjectDuplicate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsProjectDuplicate-objects as value to a dart map
  static Map<String, List<ModelsProjectDuplicate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsProjectDuplicate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsProjectDuplicate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

