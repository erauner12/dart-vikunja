//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1AuthInfo {
  /// Returns a new [V1AuthInfo] instance.
  V1AuthInfo({
    this.local,
    this.openidConnect,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  V1LocalAuthInfo? local;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  V1OpenIDAuthInfo? openidConnect;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1AuthInfo &&
    other.local == local &&
    other.openidConnect == openidConnect;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (local == null ? 0 : local!.hashCode) +
    (openidConnect == null ? 0 : openidConnect!.hashCode);

  @override
  String toString() => 'V1AuthInfo[local=$local, openidConnect=$openidConnect]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.local != null) {
      json[r'local'] = this.local;
    } else {
      json[r'local'] = null;
    }
    if (this.openidConnect != null) {
      json[r'openid_connect'] = this.openidConnect;
    } else {
      json[r'openid_connect'] = null;
    }
    return json;
  }

  /// Returns a new [V1AuthInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1AuthInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1AuthInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1AuthInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1AuthInfo(
        local: V1LocalAuthInfo.fromJson(json[r'local']),
        openidConnect: V1OpenIDAuthInfo.fromJson(json[r'openid_connect']),
      );
    }
    return null;
  }

  static List<V1AuthInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1AuthInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1AuthInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1AuthInfo> mapFromJson(dynamic json) {
    final map = <String, V1AuthInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1AuthInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1AuthInfo-objects as value to a dart map
  static Map<String, List<V1AuthInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1AuthInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1AuthInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

