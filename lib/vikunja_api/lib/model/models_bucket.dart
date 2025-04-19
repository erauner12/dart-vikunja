//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsBucket {
  /// Returns a new [ModelsBucket] instance.
  ModelsBucket({
    this.count,
    this.created,
    this.createdBy,
    this.id,
    this.limit,
    this.position,
    this.projectViewId,
    this.tasks = const [],
    this.title,
    this.updated,
  });

  /// The number of tasks currently in this bucket
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// A timestamp when this bucket was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The user who initially created the bucket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserUser? createdBy;

  /// The unique, numeric id of this bucket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// How many tasks can be at the same time on this board max
  ///
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// The position this bucket has when querying all buckets. See the tasks.position property on how to use this.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? position;

  /// The project view this bucket belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? projectViewId;

  /// All tasks which belong to this bucket.
  List<ModelsTask> tasks;

  /// The title of this bucket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// A timestamp when this bucket was last updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsBucket &&
    other.count == count &&
    other.created == created &&
    other.createdBy == createdBy &&
    other.id == id &&
    other.limit == limit &&
    other.position == position &&
    other.projectViewId == projectViewId &&
    _deepEquality.equals(other.tasks, tasks) &&
    other.title == title &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (projectViewId == null ? 0 : projectViewId!.hashCode) +
    (tasks.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'ModelsBucket[count=$count, created=$created, createdBy=$createdBy, id=$id, limit=$limit, position=$position, projectViewId=$projectViewId, tasks=$tasks, title=$title, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
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
      json[r'tasks'] = this.tasks;
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsBucket] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsBucket? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsBucket[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsBucket[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsBucket(
        count: mapValueOfType<int>(json, r'count'),
        created: mapValueOfType<String>(json, r'created'),
        createdBy: UserUser.fromJson(json[r'created_by']),
        id: mapValueOfType<int>(json, r'id'),
        limit: mapValueOfType<int>(json, r'limit'),
        position: num.parse('${json[r'position']}'),
        projectViewId: mapValueOfType<int>(json, r'project_view_id'),
        tasks: ModelsTask.listFromJson(json[r'tasks']),
        title: mapValueOfType<String>(json, r'title'),
        updated: mapValueOfType<String>(json, r'updated'),
      );
    }
    return null;
  }

  static List<ModelsBucket> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsBucket>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsBucket.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsBucket> mapFromJson(dynamic json) {
    final map = <String, ModelsBucket>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsBucket.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsBucket-objects as value to a dart map
  static Map<String, List<ModelsBucket>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsBucket>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsBucket.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

