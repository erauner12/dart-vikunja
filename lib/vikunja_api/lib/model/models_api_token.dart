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
    this.expires,
    this.id,
    this.name,
    this.scopes = const [],
    this.token,
    this.updated,
    this.userId,
  });

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
  String? expires;

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
  String? name;

  /// A list of scopes this token has access to.
  List<String> scopes;

  /// The token itself. Only returned when creating a new token.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsAPIToken &&
    other.created == created &&
          other.expires == expires &&
    other.id == id &&
          other.name == name &&
          _deepEquality.equals(other.scopes, scopes) &&
          other.token == token &&
          other.updated == updated &&
          other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
      (expires == null ? 0 : expires!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (scopes.hashCode) +
      (token == null ? 0 : token!.hashCode) +
      (updated == null ? 0 : updated!.hashCode) +
      (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() =>
      'ModelsAPIToken[created=$created, expires=$expires, id=$id, name=$name, scopes=$scopes, token=$token, updated=$updated, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.expires != null) {
      json[r'expires'] = this.expires;
    } else {
      json[r'expires'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    json[r'scopes'] = this.scopes;
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
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
        expires: mapValueOfType<String>(json, r'expires'),
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        // Explicitly parse the list of strings for scopes, converting elements
        scopes: json[r'scopes'] == null
            ? const []
            : (json[r'scopes'] as List).map((e) => e.toString()).toList(),
        token: mapValueOfType<String>(json, r'token'),
        updated: mapValueOfType<String>(json, r'updated'),
        userId: mapValueOfType<int>(json, r'user_id'),
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
