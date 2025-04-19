//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsProjectUser {
  /// Returns a new [ModelsProjectUser] instance.
  ModelsProjectUser({
    this.created,
    this.id,
    this.right,
    this.updated,
    this.userId,
  });

  /// A timestamp when this relation was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The unique, numeric id of this project <-> user relation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The right this user has. 0 = Read only, 1 = Read & Write, 2 = Admin. See the docs for more details.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsRight? right;

  /// A timestamp when this relation was last updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  /// The username.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsProjectUser &&
    other.created == created &&
    other.id == id &&
    other.right == right &&
    other.updated == updated &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (right == null ? 0 : right!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'ModelsProjectUser[created=$created, id=$id, right=$right, updated=$updated, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.right != null) {
      json[r'right'] = this.right;
    } else {
      json[r'right'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsProjectUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsProjectUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsProjectUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsProjectUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsProjectUser(
        created: mapValueOfType<String>(json, r'created'),
        id: mapValueOfType<int>(json, r'id'),
        right: ModelsRight.fromJson(json[r'right']),
        updated: mapValueOfType<String>(json, r'updated'),
        userId: mapValueOfType<String>(json, r'user_id'),
      );
    }
    return null;
  }

  static List<ModelsProjectUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsProjectUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsProjectUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsProjectUser> mapFromJson(dynamic json) {
    final map = <String, ModelsProjectUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsProjectUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsProjectUser-objects as value to a dart map
  static Map<String, List<ModelsProjectUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsProjectUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsProjectUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

