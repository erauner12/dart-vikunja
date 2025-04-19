//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsSubscription {
  /// Returns a new [ModelsSubscription] instance.
  ModelsSubscription({
    this.created,
    this.entity,
    this.entityId,
    this.id,
  });

  /// A timestamp when this subscription was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? entity;

  /// The id of the entity to subscribe to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? entityId;

  /// The numeric ID of the subscription
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsSubscription &&
    other.created == created &&
    other.entity == entity &&
    other.entityId == entityId &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (entity == null ? 0 : entity!.hashCode) +
    (entityId == null ? 0 : entityId!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'ModelsSubscription[created=$created, entity=$entity, entityId=$entityId, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.entity != null) {
      json[r'entity'] = this.entity;
    } else {
      json[r'entity'] = null;
    }
    if (this.entityId != null) {
      json[r'entity_id'] = this.entityId;
    } else {
      json[r'entity_id'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsSubscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsSubscription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsSubscription[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsSubscription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsSubscription(
        created: mapValueOfType<String>(json, r'created'),
        entity: mapValueOfType<int>(json, r'entity'),
        entityId: mapValueOfType<int>(json, r'entity_id'),
        id: mapValueOfType<int>(json, r'id'),
      );
    }
    return null;
  }

  static List<ModelsSubscription> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsSubscription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsSubscription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsSubscription> mapFromJson(dynamic json) {
    final map = <String, ModelsSubscription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsSubscription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsSubscription-objects as value to a dart map
  static Map<String, List<ModelsSubscription>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsSubscription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsSubscription.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

