//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsReaction {
  /// Returns a new [ModelsReaction] instance.
  ModelsReaction({
    this.created,
    this.user,
    this.value,
  });

  /// A timestamp when this reaction was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The user who reacted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserUser? user;

  /// The actual reaction. This can be any valid utf character or text, up to a length of 20.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsReaction &&
    other.created == created &&
    other.user == user &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'ModelsReaction[created=$created, user=$user, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsReaction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsReaction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsReaction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsReaction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsReaction(
        created: mapValueOfType<String>(json, r'created'),
        user: UserUser.fromJson(json[r'user']),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<ModelsReaction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsReaction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsReaction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsReaction> mapFromJson(dynamic json) {
    final map = <String, ModelsReaction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsReaction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsReaction-objects as value to a dart map
  static Map<String, List<ModelsReaction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsReaction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsReaction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

