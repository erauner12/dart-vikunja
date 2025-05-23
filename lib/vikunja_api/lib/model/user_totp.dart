//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserTOTP {
  /// Returns a new [UserTOTP] instance.
  UserTOTP({
    this.enabled,
    this.secret,
    this.url,
  });

  /// The totp entry will only be enabled after the user verified they have a working totp setup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  /// The totp url used to be able to enroll the user later
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserTOTP &&
    other.enabled == enabled &&
    other.secret == secret &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (secret == null ? 0 : secret!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'UserTOTP[enabled=$enabled, secret=$secret, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.secret != null) {
      json[r'secret'] = this.secret;
    } else {
      json[r'secret'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [UserTOTP] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserTOTP? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserTOTP[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserTOTP[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserTOTP(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        secret: mapValueOfType<String>(json, r'secret'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<UserTOTP> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserTOTP>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserTOTP.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserTOTP> mapFromJson(dynamic json) {
    final map = <String, UserTOTP>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserTOTP.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserTOTP-objects as value to a dart map
  static Map<String, List<UserTOTP>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserTOTP>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserTOTP.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

