//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1UserWithSettings {
  /// Returns a new [V1UserWithSettings] instance.
  V1UserWithSettings({
    this.created,
    this.deletionScheduledAt,
    this.email,
    this.id,
    this.isLocalUser,
    this.name,
    this.settings,
    this.updated,
    this.username,
  });

  /// A timestamp when this task was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deletionScheduledAt;

  /// The user's email address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// The unique, numeric id of this user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLocalUser;

  /// The full name of the user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  V1UserSettings? settings;

  /// A timestamp when this task was last updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  /// The username of the user. Is always unique.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1UserWithSettings &&
    other.created == created &&
    other.deletionScheduledAt == deletionScheduledAt &&
    other.email == email &&
    other.id == id &&
    other.isLocalUser == isLocalUser &&
    other.name == name &&
    other.settings == settings &&
    other.updated == updated &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (deletionScheduledAt == null ? 0 : deletionScheduledAt!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (isLocalUser == null ? 0 : isLocalUser!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (settings == null ? 0 : settings!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'V1UserWithSettings[created=$created, deletionScheduledAt=$deletionScheduledAt, email=$email, id=$id, isLocalUser=$isLocalUser, name=$name, settings=$settings, updated=$updated, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.deletionScheduledAt != null) {
      json[r'deletion_scheduled_at'] = this.deletionScheduledAt;
    } else {
      json[r'deletion_scheduled_at'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.isLocalUser != null) {
      json[r'is_local_user'] = this.isLocalUser;
    } else {
      json[r'is_local_user'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.settings != null) {
      json[r'settings'] = this.settings;
    } else {
      json[r'settings'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    return json;
  }

  /// Returns a new [V1UserWithSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1UserWithSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1UserWithSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1UserWithSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1UserWithSettings(
        created: mapValueOfType<String>(json, r'created'),
        deletionScheduledAt: mapValueOfType<String>(json, r'deletion_scheduled_at'),
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<int>(json, r'id'),
        isLocalUser: mapValueOfType<bool>(json, r'is_local_user'),
        name: mapValueOfType<String>(json, r'name'),
        settings: V1UserSettings.fromJson(json[r'settings']),
        updated: mapValueOfType<String>(json, r'updated'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<V1UserWithSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1UserWithSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1UserWithSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1UserWithSettings> mapFromJson(dynamic json) {
    final map = <String, V1UserWithSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1UserWithSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1UserWithSettings-objects as value to a dart map
  static Map<String, List<V1UserWithSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1UserWithSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1UserWithSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

