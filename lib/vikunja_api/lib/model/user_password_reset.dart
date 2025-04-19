//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserPasswordReset {
  /// Returns a new [UserPasswordReset] instance.
  UserPasswordReset({
    this.newPassword,
    this.token,
  });

  /// The new password for this user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? newPassword;

  /// The previously issued reset token.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPasswordReset &&
    other.newPassword == newPassword &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (newPassword == null ? 0 : newPassword!.hashCode) +
    (token == null ? 0 : token!.hashCode);

  @override
  String toString() => 'UserPasswordReset[newPassword=$newPassword, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.newPassword != null) {
      json[r'new_password'] = this.newPassword;
    } else {
      json[r'new_password'] = null;
    }
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
    return json;
  }

  /// Returns a new [UserPasswordReset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserPasswordReset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserPasswordReset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserPasswordReset[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserPasswordReset(
        newPassword: mapValueOfType<String>(json, r'new_password'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<UserPasswordReset> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPasswordReset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPasswordReset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserPasswordReset> mapFromJson(dynamic json) {
    final map = <String, UserPasswordReset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPasswordReset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserPasswordReset-objects as value to a dart map
  static Map<String, List<UserPasswordReset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserPasswordReset>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserPasswordReset.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

