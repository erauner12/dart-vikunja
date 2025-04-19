//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1VikunjaInfos {
  /// Returns a new [V1VikunjaInfos] instance.
  V1VikunjaInfos({
    this.auth,
    this.availableMigrators = const [],
    this.caldavEnabled,
    this.demoModeEnabled,
    this.emailRemindersEnabled,
    this.enabledBackgroundProviders = const [],
    this.frontendUrl,
    this.legal,
    this.linkSharingEnabled,
    this.maxFileSize,
    this.motd,
    this.publicTeamsEnabled,
    this.registrationEnabled,
    this.taskAttachmentsEnabled,
    this.taskCommentsEnabled,
    this.totpEnabled,
    this.userDeletionEnabled,
    this.version,
    this.webhooksEnabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  V1AuthInfo? auth;

  List<String> availableMigrators;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? caldavEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? demoModeEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? emailRemindersEnabled;

  List<String> enabledBackgroundProviders;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? frontendUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  V1LegalInfo? legal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? linkSharingEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? maxFileSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? motd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publicTeamsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? registrationEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? taskAttachmentsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? taskCommentsEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? totpEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? userDeletionEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? webhooksEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VikunjaInfos &&
    other.auth == auth &&
    _deepEquality.equals(other.availableMigrators, availableMigrators) &&
    other.caldavEnabled == caldavEnabled &&
    other.demoModeEnabled == demoModeEnabled &&
    other.emailRemindersEnabled == emailRemindersEnabled &&
    _deepEquality.equals(other.enabledBackgroundProviders, enabledBackgroundProviders) &&
    other.frontendUrl == frontendUrl &&
    other.legal == legal &&
    other.linkSharingEnabled == linkSharingEnabled &&
    other.maxFileSize == maxFileSize &&
    other.motd == motd &&
    other.publicTeamsEnabled == publicTeamsEnabled &&
    other.registrationEnabled == registrationEnabled &&
    other.taskAttachmentsEnabled == taskAttachmentsEnabled &&
    other.taskCommentsEnabled == taskCommentsEnabled &&
    other.totpEnabled == totpEnabled &&
    other.userDeletionEnabled == userDeletionEnabled &&
    other.version == version &&
    other.webhooksEnabled == webhooksEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (auth == null ? 0 : auth!.hashCode) +
    (availableMigrators.hashCode) +
    (caldavEnabled == null ? 0 : caldavEnabled!.hashCode) +
    (demoModeEnabled == null ? 0 : demoModeEnabled!.hashCode) +
    (emailRemindersEnabled == null ? 0 : emailRemindersEnabled!.hashCode) +
    (enabledBackgroundProviders.hashCode) +
    (frontendUrl == null ? 0 : frontendUrl!.hashCode) +
    (legal == null ? 0 : legal!.hashCode) +
    (linkSharingEnabled == null ? 0 : linkSharingEnabled!.hashCode) +
    (maxFileSize == null ? 0 : maxFileSize!.hashCode) +
    (motd == null ? 0 : motd!.hashCode) +
    (publicTeamsEnabled == null ? 0 : publicTeamsEnabled!.hashCode) +
    (registrationEnabled == null ? 0 : registrationEnabled!.hashCode) +
    (taskAttachmentsEnabled == null ? 0 : taskAttachmentsEnabled!.hashCode) +
    (taskCommentsEnabled == null ? 0 : taskCommentsEnabled!.hashCode) +
    (totpEnabled == null ? 0 : totpEnabled!.hashCode) +
    (userDeletionEnabled == null ? 0 : userDeletionEnabled!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (webhooksEnabled == null ? 0 : webhooksEnabled!.hashCode);

  @override
  String toString() => 'V1VikunjaInfos[auth=$auth, availableMigrators=$availableMigrators, caldavEnabled=$caldavEnabled, demoModeEnabled=$demoModeEnabled, emailRemindersEnabled=$emailRemindersEnabled, enabledBackgroundProviders=$enabledBackgroundProviders, frontendUrl=$frontendUrl, legal=$legal, linkSharingEnabled=$linkSharingEnabled, maxFileSize=$maxFileSize, motd=$motd, publicTeamsEnabled=$publicTeamsEnabled, registrationEnabled=$registrationEnabled, taskAttachmentsEnabled=$taskAttachmentsEnabled, taskCommentsEnabled=$taskCommentsEnabled, totpEnabled=$totpEnabled, userDeletionEnabled=$userDeletionEnabled, version=$version, webhooksEnabled=$webhooksEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.auth != null) {
      json[r'auth'] = this.auth;
    } else {
      json[r'auth'] = null;
    }
      json[r'available_migrators'] = this.availableMigrators;
    if (this.caldavEnabled != null) {
      json[r'caldav_enabled'] = this.caldavEnabled;
    } else {
      json[r'caldav_enabled'] = null;
    }
    if (this.demoModeEnabled != null) {
      json[r'demo_mode_enabled'] = this.demoModeEnabled;
    } else {
      json[r'demo_mode_enabled'] = null;
    }
    if (this.emailRemindersEnabled != null) {
      json[r'email_reminders_enabled'] = this.emailRemindersEnabled;
    } else {
      json[r'email_reminders_enabled'] = null;
    }
      json[r'enabled_background_providers'] = this.enabledBackgroundProviders;
    if (this.frontendUrl != null) {
      json[r'frontend_url'] = this.frontendUrl;
    } else {
      json[r'frontend_url'] = null;
    }
    if (this.legal != null) {
      json[r'legal'] = this.legal;
    } else {
      json[r'legal'] = null;
    }
    if (this.linkSharingEnabled != null) {
      json[r'link_sharing_enabled'] = this.linkSharingEnabled;
    } else {
      json[r'link_sharing_enabled'] = null;
    }
    if (this.maxFileSize != null) {
      json[r'max_file_size'] = this.maxFileSize;
    } else {
      json[r'max_file_size'] = null;
    }
    if (this.motd != null) {
      json[r'motd'] = this.motd;
    } else {
      json[r'motd'] = null;
    }
    if (this.publicTeamsEnabled != null) {
      json[r'public_teams_enabled'] = this.publicTeamsEnabled;
    } else {
      json[r'public_teams_enabled'] = null;
    }
    if (this.registrationEnabled != null) {
      json[r'registration_enabled'] = this.registrationEnabled;
    } else {
      json[r'registration_enabled'] = null;
    }
    if (this.taskAttachmentsEnabled != null) {
      json[r'task_attachments_enabled'] = this.taskAttachmentsEnabled;
    } else {
      json[r'task_attachments_enabled'] = null;
    }
    if (this.taskCommentsEnabled != null) {
      json[r'task_comments_enabled'] = this.taskCommentsEnabled;
    } else {
      json[r'task_comments_enabled'] = null;
    }
    if (this.totpEnabled != null) {
      json[r'totp_enabled'] = this.totpEnabled;
    } else {
      json[r'totp_enabled'] = null;
    }
    if (this.userDeletionEnabled != null) {
      json[r'user_deletion_enabled'] = this.userDeletionEnabled;
    } else {
      json[r'user_deletion_enabled'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.webhooksEnabled != null) {
      json[r'webhooks_enabled'] = this.webhooksEnabled;
    } else {
      json[r'webhooks_enabled'] = null;
    }
    return json;
  }

  /// Returns a new [V1VikunjaInfos] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1VikunjaInfos? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1VikunjaInfos[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1VikunjaInfos[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1VikunjaInfos(
        auth: V1AuthInfo.fromJson(json[r'auth']),
        availableMigrators: json[r'available_migrators'] is Iterable
            ? (json[r'available_migrators'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        caldavEnabled: mapValueOfType<bool>(json, r'caldav_enabled'),
        demoModeEnabled: mapValueOfType<bool>(json, r'demo_mode_enabled'),
        emailRemindersEnabled: mapValueOfType<bool>(json, r'email_reminders_enabled'),
        enabledBackgroundProviders: json[r'enabled_background_providers'] is Iterable
            ? (json[r'enabled_background_providers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        frontendUrl: mapValueOfType<String>(json, r'frontend_url'),
        legal: V1LegalInfo.fromJson(json[r'legal']),
        linkSharingEnabled: mapValueOfType<bool>(json, r'link_sharing_enabled'),
        maxFileSize: mapValueOfType<String>(json, r'max_file_size'),
        motd: mapValueOfType<String>(json, r'motd'),
        publicTeamsEnabled: mapValueOfType<bool>(json, r'public_teams_enabled'),
        registrationEnabled: mapValueOfType<bool>(json, r'registration_enabled'),
        taskAttachmentsEnabled: mapValueOfType<bool>(json, r'task_attachments_enabled'),
        taskCommentsEnabled: mapValueOfType<bool>(json, r'task_comments_enabled'),
        totpEnabled: mapValueOfType<bool>(json, r'totp_enabled'),
        userDeletionEnabled: mapValueOfType<bool>(json, r'user_deletion_enabled'),
        version: mapValueOfType<String>(json, r'version'),
        webhooksEnabled: mapValueOfType<bool>(json, r'webhooks_enabled'),
      );
    }
    return null;
  }

  static List<V1VikunjaInfos> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1VikunjaInfos>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1VikunjaInfos.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1VikunjaInfos> mapFromJson(dynamic json) {
    final map = <String, V1VikunjaInfos>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1VikunjaInfos.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1VikunjaInfos-objects as value to a dart map
  static Map<String, List<V1VikunjaInfos>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1VikunjaInfos>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1VikunjaInfos.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

