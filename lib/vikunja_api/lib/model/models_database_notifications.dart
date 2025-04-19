//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsDatabaseNotifications {
  /// Returns a new [ModelsDatabaseNotifications] instance.
  ModelsDatabaseNotifications({
    this.created,
    this.id,
    this.name,
    this.notification,
    this.read,
    this.readAt,
  });

  /// A timestamp when this notification was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The unique, numeric id of this notification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The name of the notification
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The actual content of the notification.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? notification;

  /// Whether or not to mark this notification as read or unread. True is read, false is unread.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? read;

  /// When this notification is marked as read, this will be updated with the current timestamp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? readAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsDatabaseNotifications &&
    other.created == created &&
    other.id == id &&
    other.name == name &&
    other.notification == notification &&
    other.read == read &&
    other.readAt == readAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (notification == null ? 0 : notification!.hashCode) +
    (read == null ? 0 : read!.hashCode) +
    (readAt == null ? 0 : readAt!.hashCode);

  @override
  String toString() => 'ModelsDatabaseNotifications[created=$created, id=$id, name=$name, notification=$notification, read=$read, readAt=$readAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.notification != null) {
      json[r'notification'] = this.notification;
    } else {
      json[r'notification'] = null;
    }
    if (this.read != null) {
      json[r'read'] = this.read;
    } else {
      json[r'read'] = null;
    }
    if (this.readAt != null) {
      json[r'read_at'] = this.readAt;
    } else {
      json[r'read_at'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsDatabaseNotifications] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsDatabaseNotifications? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsDatabaseNotifications[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsDatabaseNotifications[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsDatabaseNotifications(
        created: mapValueOfType<String>(json, r'created'),
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        notification: mapValueOfType<Object>(json, r'notification'),
        read: mapValueOfType<bool>(json, r'read'),
        readAt: mapValueOfType<String>(json, r'read_at'),
      );
    }
    return null;
  }

  static List<ModelsDatabaseNotifications> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsDatabaseNotifications>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsDatabaseNotifications.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsDatabaseNotifications> mapFromJson(dynamic json) {
    final map = <String, ModelsDatabaseNotifications>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsDatabaseNotifications.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsDatabaseNotifications-objects as value to a dart map
  static Map<String, List<ModelsDatabaseNotifications>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsDatabaseNotifications>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsDatabaseNotifications.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

