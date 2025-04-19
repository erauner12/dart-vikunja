//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsAPIToken {
  /// Returns a new [ModelsAPIToken] instance.
  ModelsAPIToken({
    this.created,
    this.expiresAt,
    this.id,
    this.permissions,
    this.title,
    this.token,
  });

  /// A timestamp when this api key was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The date when this key expires.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiresAt;

  /// The unique, numeric id of this api key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The permissions this token has. Possible values are available via the /routes endpoint and consist of the keys of the list from that endpoint. For example, if the token should be able to read all tasks as well as update existing tasks, you should add `{\"tasks\":[\"read_all\",\"update\"]}`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Map<String, List<String>>? permissions;

  /// A human-readable name for this token
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The actual api key. Only visible after creation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsAPIToken &&
    other.created == created &&
    other.expiresAt == expiresAt &&
    other.id == id &&
    _deepEquality.equals(other.permissions, permissions) &&
    other.title == title &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'ModelsAPIToken[created=$created, expiresAt=$expiresAt, id=$id, permissions=$permissions, title=$title, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expires_at'] = this.expiresAt;
    } else {
      json[r'expires_at'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsAPIToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsAPIToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsAPIToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsAPIToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsAPIToken(
        created: mapValueOfType<String>(json, r'created'),
        expiresAt: mapValueOfType<String>(json, r'expires_at'),
        id: mapValueOfType<int>(json, r'id'),
        permissions: json[r'permissions'] == null
          ? null
            : mapCastOfType<String, List>(json, r'permissions'),
        title: mapValueOfType<String>(json, r'title'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<ModelsAPIToken> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsAPIToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsAPIToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsAPIToken> mapFromJson(dynamic json) {
    final map = <String, ModelsAPIToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsAPIToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsAPIToken-objects as value to a dart map
  static Map<String, List<ModelsAPIToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsAPIToken>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsAPIToken.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

