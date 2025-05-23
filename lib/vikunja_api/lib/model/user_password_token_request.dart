//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserPasswordTokenRequest {
  /// Returns a new [UserPasswordTokenRequest] instance.
  UserPasswordTokenRequest({
    this.email,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPasswordTokenRequest &&
    other.email == email;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode);

  @override
  String toString() => 'UserPasswordTokenRequest[email=$email]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    return json;
  }

  /// Returns a new [UserPasswordTokenRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserPasswordTokenRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserPasswordTokenRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserPasswordTokenRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserPasswordTokenRequest(
        email: mapValueOfType<String>(json, r'email'),
      );
    }
    return null;
  }

  static List<UserPasswordTokenRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPasswordTokenRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPasswordTokenRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserPasswordTokenRequest> mapFromJson(dynamic json) {
    final map = <String, UserPasswordTokenRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPasswordTokenRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserPasswordTokenRequest-objects as value to a dart map
  static Map<String, List<UserPasswordTokenRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserPasswordTokenRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserPasswordTokenRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

