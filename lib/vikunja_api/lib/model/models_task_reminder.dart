//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsTaskReminder {
  /// Returns a new [ModelsTaskReminder] instance.
  ModelsTaskReminder({
    this.relativePeriod,
    this.relativeTo,
    this.reminder,
  });

  /// A period in seconds relative to another date argument. Negative values mean the reminder triggers before the date. Default: 0, tiggers when RelativeTo is due.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? relativePeriod;

  /// The name of the date field to which the relative period refers to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsReminderRelation? relativeTo;

  /// The absolute time when the user wants to be reminded of the task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reminder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsTaskReminder &&
    other.relativePeriod == relativePeriod &&
    other.relativeTo == relativeTo &&
    other.reminder == reminder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (relativePeriod == null ? 0 : relativePeriod!.hashCode) +
    (relativeTo == null ? 0 : relativeTo!.hashCode) +
    (reminder == null ? 0 : reminder!.hashCode);

  @override
  String toString() => 'ModelsTaskReminder[relativePeriod=$relativePeriod, relativeTo=$relativeTo, reminder=$reminder]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.relativePeriod != null) {
      json[r'relative_period'] = this.relativePeriod;
    } else {
      json[r'relative_period'] = null;
    }
    if (this.relativeTo != null) {
      json[r'relative_to'] = this.relativeTo;
    } else {
      json[r'relative_to'] = null;
    }
    if (this.reminder != null) {
      json[r'reminder'] = this.reminder;
    } else {
      json[r'reminder'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsTaskReminder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsTaskReminder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsTaskReminder[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsTaskReminder[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsTaskReminder(
        relativePeriod: mapValueOfType<int>(json, r'relative_period'),
        relativeTo: ModelsReminderRelation.fromJson(json[r'relative_to']),
        reminder: mapValueOfType<String>(json, r'reminder'),
      );
    }
    return null;
  }

  static List<ModelsTaskReminder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsTaskReminder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsTaskReminder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsTaskReminder> mapFromJson(dynamic json) {
    final map = <String, ModelsTaskReminder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsTaskReminder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsTaskReminder-objects as value to a dart map
  static Map<String, List<ModelsTaskReminder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsTaskReminder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsTaskReminder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

