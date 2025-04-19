//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1OpenIDAuthInfo {
  /// Returns a new [V1OpenIDAuthInfo] instance.
  V1OpenIDAuthInfo({
    this.enabled,
    this.providers = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  List<OpenidProvider> providers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1OpenIDAuthInfo &&
    other.enabled == enabled &&
    _deepEquality.equals(other.providers, providers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (providers.hashCode);

  @override
  String toString() => 'V1OpenIDAuthInfo[enabled=$enabled, providers=$providers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
      json[r'providers'] = this.providers;
    return json;
  }

  /// Returns a new [V1OpenIDAuthInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1OpenIDAuthInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1OpenIDAuthInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1OpenIDAuthInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1OpenIDAuthInfo(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        providers: OpenidProvider.listFromJson(json[r'providers']),
      );
    }
    return null;
  }

  static List<V1OpenIDAuthInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1OpenIDAuthInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1OpenIDAuthInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1OpenIDAuthInfo> mapFromJson(dynamic json) {
    final map = <String, V1OpenIDAuthInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1OpenIDAuthInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1OpenIDAuthInfo-objects as value to a dart map
  static Map<String, List<V1OpenIDAuthInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1OpenIDAuthInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1OpenIDAuthInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

