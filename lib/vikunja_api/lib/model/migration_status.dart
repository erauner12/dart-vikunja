//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MigrationStatus {
  /// Returns a new [MigrationStatus] instance.
  MigrationStatus({
    this.finishedAt,
    this.id,
    this.migratorName,
    this.startedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? finishedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? migratorName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MigrationStatus &&
    other.finishedAt == finishedAt &&
    other.id == id &&
    other.migratorName == migratorName &&
    other.startedAt == startedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (finishedAt == null ? 0 : finishedAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (migratorName == null ? 0 : migratorName!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode);

  @override
  String toString() => 'MigrationStatus[finishedAt=$finishedAt, id=$id, migratorName=$migratorName, startedAt=$startedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.finishedAt != null) {
      json[r'finished_at'] = this.finishedAt;
    } else {
      json[r'finished_at'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.migratorName != null) {
      json[r'migrator_name'] = this.migratorName;
    } else {
      json[r'migrator_name'] = null;
    }
    if (this.startedAt != null) {
      json[r'started_at'] = this.startedAt;
    } else {
      json[r'started_at'] = null;
    }
    return json;
  }

  /// Returns a new [MigrationStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MigrationStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MigrationStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MigrationStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MigrationStatus(
        finishedAt: mapValueOfType<String>(json, r'finished_at'),
        id: mapValueOfType<int>(json, r'id'),
        migratorName: mapValueOfType<String>(json, r'migrator_name'),
        startedAt: mapValueOfType<String>(json, r'started_at'),
      );
    }
    return null;
  }

  static List<MigrationStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MigrationStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MigrationStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MigrationStatus> mapFromJson(dynamic json) {
    final map = <String, MigrationStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MigrationStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MigrationStatus-objects as value to a dart map
  static Map<String, List<MigrationStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MigrationStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MigrationStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

