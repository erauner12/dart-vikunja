//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserAPIUserPassword {
  /// Returns a new [UserAPIUserPassword] instance.
  UserAPIUserPassword({
    this.email,
    this.id,
    this.password,
    this.username,
  });

  /// The user's email address
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

  /// The user's password in clear text. Only used when registering the user. The maximum limi is 72 bytes, which may be less than 72 characters. This is due to the limit in the bcrypt hashing algorithm used to store passwords in Vikunja.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  /// The user's username. Cannot contain anything that looks like an url or whitespaces.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAPIUserPassword &&
    other.email == email &&
    other.id == id &&
    other.password == password &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'UserAPIUserPassword[email=$email, id=$id, password=$password, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    return json;
  }

  /// Returns a new [UserAPIUserPassword] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAPIUserPassword? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserAPIUserPassword[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserAPIUserPassword[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAPIUserPassword(
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<int>(json, r'id'),
        password: mapValueOfType<String>(json, r'password'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<UserAPIUserPassword> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAPIUserPassword>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAPIUserPassword.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAPIUserPassword> mapFromJson(dynamic json) {
    final map = <String, UserAPIUserPassword>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAPIUserPassword.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAPIUserPassword-objects as value to a dart map
  static Map<String, List<UserAPIUserPassword>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAPIUserPassword>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserAPIUserPassword.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

