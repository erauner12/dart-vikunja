//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsLabel {
  /// Returns a new [ModelsLabel] instance.
  ModelsLabel({
    this.created,
    this.createdBy,
    this.description,
    this.hexColor,
    this.id,
    this.title,
    this.updated,
  });

  /// A timestamp when this label was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The user who created this label
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserUser? createdBy;

  /// The label description.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The color this label has in hex format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hexColor;

  /// The unique, numeric id of this label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The title of the lable. You'll see this one on tasks associated with it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// A timestamp when this label was last updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsLabel &&
    other.created == created &&
    other.createdBy == createdBy &&
    other.description == description &&
    other.hexColor == hexColor &&
    other.id == id &&
    other.title == title &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (hexColor == null ? 0 : hexColor!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'ModelsLabel[created=$created, createdBy=$createdBy, description=$description, hexColor=$hexColor, id=$id, title=$title, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.createdBy != null) {
      json[r'created_by'] = this.createdBy;
    } else {
      json[r'created_by'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.hexColor != null) {
      json[r'hex_color'] = this.hexColor;
    } else {
      json[r'hex_color'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsLabel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsLabel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsLabel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsLabel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsLabel(
        created: mapValueOfType<String>(json, r'created'),
        createdBy: UserUser.fromJson(json[r'created_by']),
        description: mapValueOfType<String>(json, r'description'),
        hexColor: mapValueOfType<String>(json, r'hex_color'),
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        updated: mapValueOfType<String>(json, r'updated'),
      );
    }
    return null;
  }

  static List<ModelsLabel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsLabel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsLabel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsLabel> mapFromJson(dynamic json) {
    final map = <String, ModelsLabel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsLabel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsLabel-objects as value to a dart map
  static Map<String, List<ModelsLabel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsLabel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsLabel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

