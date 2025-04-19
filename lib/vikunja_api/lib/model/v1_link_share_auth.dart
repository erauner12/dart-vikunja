//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1LinkShareAuth {
  /// Returns a new [V1LinkShareAuth] instance.
  V1LinkShareAuth({
    this.password,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LinkShareAuth &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (password == null ? 0 : password!.hashCode);

  @override
  String toString() => 'V1LinkShareAuth[password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    return json;
  }

  /// Returns a new [V1LinkShareAuth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1LinkShareAuth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1LinkShareAuth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1LinkShareAuth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1LinkShareAuth(
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<V1LinkShareAuth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1LinkShareAuth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1LinkShareAuth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1LinkShareAuth> mapFromJson(dynamic json) {
    final map = <String, V1LinkShareAuth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1LinkShareAuth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1LinkShareAuth-objects as value to a dart map
  static Map<String, List<V1LinkShareAuth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1LinkShareAuth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1LinkShareAuth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

