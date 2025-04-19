//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsTeamMember {
  /// Returns a new [ModelsTeamMember] instance.
  ModelsTeamMember({
    this.admin,
    this.created,
    this.id,
    this.username,
  });

  /// Whether or not the member is an admin of the team. See the docs for more about what a team admin can do
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? admin;

  /// A timestamp when this relation was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The unique, numeric id of this team member relation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The username of the member. We use this to prevent automated user id entering.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsTeamMember &&
    other.admin == admin &&
    other.created == created &&
    other.id == id &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (admin == null ? 0 : admin!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'ModelsTeamMember[admin=$admin, created=$created, id=$id, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.admin != null) {
      json[r'admin'] = this.admin;
    } else {
      json[r'admin'] = null;
    }
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
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsTeamMember] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsTeamMember? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsTeamMember[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsTeamMember[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsTeamMember(
        admin: mapValueOfType<bool>(json, r'admin'),
        created: mapValueOfType<String>(json, r'created'),
        id: mapValueOfType<int>(json, r'id'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<ModelsTeamMember> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsTeamMember>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsTeamMember.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsTeamMember> mapFromJson(dynamic json) {
    final map = <String, ModelsTeamMember>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsTeamMember.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsTeamMember-objects as value to a dart map
  static Map<String, List<ModelsTeamMember>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsTeamMember>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsTeamMember.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

