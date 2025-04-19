//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OpenidProvider {
  /// Returns a new [OpenidProvider] instance.
  OpenidProvider({
    this.authUrl,
    this.clientId,
    this.key,
    this.logoutUrl,
    this.name,
    this.scope,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logoutUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenidProvider &&
    other.authUrl == authUrl &&
    other.clientId == clientId &&
    other.key == key &&
    other.logoutUrl == logoutUrl &&
    other.name == name &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (authUrl == null ? 0 : authUrl!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (logoutUrl == null ? 0 : logoutUrl!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'OpenidProvider[authUrl=$authUrl, clientId=$clientId, key=$key, logoutUrl=$logoutUrl, name=$name, scope=$scope]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.authUrl != null) {
      json[r'auth_url'] = this.authUrl;
    } else {
      json[r'auth_url'] = null;
    }
    if (this.clientId != null) {
      json[r'client_id'] = this.clientId;
    } else {
      json[r'client_id'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.logoutUrl != null) {
      json[r'logout_url'] = this.logoutUrl;
    } else {
      json[r'logout_url'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    return json;
  }

  /// Returns a new [OpenidProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenidProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenidProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenidProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenidProvider(
        authUrl: mapValueOfType<String>(json, r'auth_url'),
        clientId: mapValueOfType<String>(json, r'client_id'),
        key: mapValueOfType<String>(json, r'key'),
        logoutUrl: mapValueOfType<String>(json, r'logout_url'),
        name: mapValueOfType<String>(json, r'name'),
        scope: mapValueOfType<String>(json, r'scope'),
      );
    }
    return null;
  }

  static List<OpenidProvider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenidProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenidProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenidProvider> mapFromJson(dynamic json) {
    final map = <String, OpenidProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenidProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenidProvider-objects as value to a dart map
  static Map<String, List<OpenidProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenidProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenidProvider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

