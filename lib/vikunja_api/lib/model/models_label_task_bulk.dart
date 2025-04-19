//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsLabelTaskBulk {
  /// Returns a new [ModelsLabelTaskBulk] instance.
  ModelsLabelTaskBulk({
    this.labels = const [],
  });

  /// All labels you want to update at once.
  List<ModelsLabel> labels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsLabelTaskBulk &&
    _deepEquality.equals(other.labels, labels);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labels.hashCode);

  @override
  String toString() => 'ModelsLabelTaskBulk[labels=$labels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'labels'] = this.labels;
    return json;
  }

  /// Returns a new [ModelsLabelTaskBulk] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsLabelTaskBulk? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsLabelTaskBulk[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsLabelTaskBulk[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsLabelTaskBulk(
        labels: ModelsLabel.listFromJson(json[r'labels']),
      );
    }
    return null;
  }

  static List<ModelsLabelTaskBulk> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsLabelTaskBulk>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsLabelTaskBulk.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsLabelTaskBulk> mapFromJson(dynamic json) {
    final map = <String, ModelsLabelTaskBulk>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsLabelTaskBulk.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsLabelTaskBulk-objects as value to a dart map
  static Map<String, List<ModelsLabelTaskBulk>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsLabelTaskBulk>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsLabelTaskBulk.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

