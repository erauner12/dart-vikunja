//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserLogin {
  /// Returns a new [UserLogin] instance.
  UserLogin({
    this.longToken,
    this.password,
    this.totpPasscode,
    this.username,
  });

  /// If true, the token returned will be valid a lot longer than default. Useful for \"remember me\" style logins.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? longToken;

  /// The password for the user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  /// The totp passcode of a user. Only needs to be provided when enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? totpPasscode;

  /// The username used to log in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserLogin &&
    other.longToken == longToken &&
    other.password == password &&
    other.totpPasscode == totpPasscode &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (longToken == null ? 0 : longToken!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (totpPasscode == null ? 0 : totpPasscode!.hashCode) +
    (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'UserLogin[longToken=$longToken, password=$password, totpPasscode=$totpPasscode, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.longToken != null) {
      json[r'long_token'] = this.longToken;
    } else {
      json[r'long_token'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.totpPasscode != null) {
      json[r'totp_passcode'] = this.totpPasscode;
    } else {
      json[r'totp_passcode'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    return json;
  }

  /// Returns a new [UserLogin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserLogin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserLogin[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserLogin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserLogin(
        longToken: mapValueOfType<bool>(json, r'long_token'),
        password: mapValueOfType<String>(json, r'password'),
        totpPasscode: mapValueOfType<String>(json, r'totp_passcode'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<UserLogin> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserLogin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserLogin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserLogin> mapFromJson(dynamic json) {
    final map = <String, UserLogin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserLogin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserLogin-objects as value to a dart map
  static Map<String, List<UserLogin>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserLogin>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserLogin.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

