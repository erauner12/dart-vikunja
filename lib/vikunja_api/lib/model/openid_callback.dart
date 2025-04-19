//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OpenidCallback {
  /// Returns a new [OpenidCallback] instance.
  OpenidCallback({
    this.code,
    this.redirectUrl,
    this.scope,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redirectUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenidCallback &&
    other.code == code &&
    other.redirectUrl == redirectUrl &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (redirectUrl == null ? 0 : redirectUrl!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'OpenidCallback[code=$code, redirectUrl=$redirectUrl, scope=$scope]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.redirectUrl != null) {
      json[r'redirect_url'] = this.redirectUrl;
    } else {
      json[r'redirect_url'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    return json;
  }

  /// Returns a new [OpenidCallback] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenidCallback? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenidCallback[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenidCallback[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenidCallback(
        code: mapValueOfType<String>(json, r'code'),
        redirectUrl: mapValueOfType<String>(json, r'redirect_url'),
        scope: mapValueOfType<String>(json, r'scope'),
      );
    }
    return null;
  }

  static List<OpenidCallback> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenidCallback>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenidCallback.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenidCallback> mapFromJson(dynamic json) {
    final map = <String, OpenidCallback>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenidCallback.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenidCallback-objects as value to a dart map
  static Map<String, List<OpenidCallback>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenidCallback>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenidCallback.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

