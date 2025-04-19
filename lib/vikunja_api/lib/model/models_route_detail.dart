//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsRouteDetail {
  /// Returns a new [ModelsRouteDetail] instance.
  ModelsRouteDetail({
    this.method,
    this.path,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsRouteDetail &&
    other.method == method &&
    other.path == path;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (method == null ? 0 : method!.hashCode) +
    (path == null ? 0 : path!.hashCode);

  @override
  String toString() => 'ModelsRouteDetail[method=$method, path=$path]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsRouteDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsRouteDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsRouteDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsRouteDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsRouteDetail(
        method: mapValueOfType<String>(json, r'method'),
        path: mapValueOfType<String>(json, r'path'),
      );
    }
    return null;
  }

  static List<ModelsRouteDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsRouteDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsRouteDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsRouteDetail> mapFromJson(dynamic json) {
    final map = <String, ModelsRouteDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsRouteDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsRouteDetail-objects as value to a dart map
  static Map<String, List<ModelsRouteDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsRouteDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsRouteDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

