//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsWebhook {
  /// Returns a new [ModelsWebhook] instance.
  ModelsWebhook({
    this.created,
    this.createdBy,
    this.events = const [],
    this.id,
    this.projectId,
    this.secret,
    this.targetUrl,
    this.updated,
  });

  /// A timestamp when this webhook target was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The user who initially created the webhook target.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserUser? createdBy;

  /// The webhook events which should fire this webhook target
  List<String> events;

  /// The generated ID of this webhook target
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The project ID of the project this webhook target belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? projectId;

  /// If provided, webhook requests will be signed using HMAC. Check out the docs about how to use this: https://vikunja.io/docs/webhooks/#signing
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  /// The target URL where the POST request with the webhook payload will be made
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetUrl;

  /// A timestamp when this webhook target was last updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsWebhook &&
    other.created == created &&
    other.createdBy == createdBy &&
    _deepEquality.equals(other.events, events) &&
    other.id == id &&
    other.projectId == projectId &&
    other.secret == secret &&
    other.targetUrl == targetUrl &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (events.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (secret == null ? 0 : secret!.hashCode) +
    (targetUrl == null ? 0 : targetUrl!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'ModelsWebhook[created=$created, createdBy=$createdBy, events=$events, id=$id, projectId=$projectId, secret=$secret, targetUrl=$targetUrl, updated=$updated]';

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
      json[r'events'] = this.events;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.projectId != null) {
      json[r'project_id'] = this.projectId;
    } else {
      json[r'project_id'] = null;
    }
    if (this.secret != null) {
      json[r'secret'] = this.secret;
    } else {
      json[r'secret'] = null;
    }
    if (this.targetUrl != null) {
      json[r'target_url'] = this.targetUrl;
    } else {
      json[r'target_url'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsWebhook] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsWebhook? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsWebhook[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsWebhook[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsWebhook(
        created: mapValueOfType<String>(json, r'created'),
        createdBy: UserUser.fromJson(json[r'created_by']),
        events: json[r'events'] is Iterable
            ? (json[r'events'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        id: mapValueOfType<int>(json, r'id'),
        projectId: mapValueOfType<int>(json, r'project_id'),
        secret: mapValueOfType<String>(json, r'secret'),
        targetUrl: mapValueOfType<String>(json, r'target_url'),
        updated: mapValueOfType<String>(json, r'updated'),
      );
    }
    return null;
  }

  static List<ModelsWebhook> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsWebhook>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsWebhook.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsWebhook> mapFromJson(dynamic json) {
    final map = <String, ModelsWebhook>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsWebhook.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsWebhook-objects as value to a dart map
  static Map<String, List<ModelsWebhook>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsWebhook>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsWebhook.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

