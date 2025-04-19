//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MicrosofttodoMigration {
  /// Returns a new [MicrosofttodoMigration] instance.
  MicrosofttodoMigration({
    this.code,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MicrosofttodoMigration &&
    other.code == code;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode);

  @override
  String toString() => 'MicrosofttodoMigration[code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    return json;
  }

  /// Returns a new [MicrosofttodoMigration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MicrosofttodoMigration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MicrosofttodoMigration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MicrosofttodoMigration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MicrosofttodoMigration(
        code: mapValueOfType<String>(json, r'code'),
      );
    }
    return null;
  }

  static List<MicrosofttodoMigration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MicrosofttodoMigration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MicrosofttodoMigration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MicrosofttodoMigration> mapFromJson(dynamic json) {
    final map = <String, MicrosofttodoMigration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MicrosofttodoMigration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MicrosofttodoMigration-objects as value to a dart map
  static Map<String, List<MicrosofttodoMigration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MicrosofttodoMigration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MicrosofttodoMigration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

