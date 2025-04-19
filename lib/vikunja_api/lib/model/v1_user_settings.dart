//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class V1UserSettings {
  /// Returns a new [V1UserSettings] instance.
  V1UserSettings({
    this.defaultProjectId,
    this.discoverableByEmail,
    this.discoverableByName,
    this.emailRemindersEnabled,
    this.frontendSettings,
    this.language,
    this.name,
    this.overdueTasksRemindersEnabled,
    this.overdueTasksRemindersTime,
    this.timezone,
    this.weekStart,
  });

  /// If a task is created without a specified project this value should be used. Applies to tasks made directly in API and from clients.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? defaultProjectId;

  /// If true, the user can be found when searching for their exact email.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? discoverableByEmail;

  /// If true, this user can be found by their name or parts of it when searching for it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? discoverableByName;

  /// If enabled, sends email reminders of tasks to the user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? emailRemindersEnabled;

  /// Additional settings only used by the frontend
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? frontendSettings;

  /// The user's language
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// The new name of the current user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// If enabled, the user will get an email for their overdue tasks each morning.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? overdueTasksRemindersEnabled;

  /// The time when the daily summary of overdue tasks will be sent via email.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? overdueTasksRemindersTime;

  /// The user's time zone. Used to send task reminders in the time zone of the user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timezone;

  /// The day when the week starts for this user. 0 = sunday, 1 = monday, etc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? weekStart;

  @override
  bool operator ==(Object other) => identical(this, other) || other is V1UserSettings &&
    other.defaultProjectId == defaultProjectId &&
    other.discoverableByEmail == discoverableByEmail &&
    other.discoverableByName == discoverableByName &&
    other.emailRemindersEnabled == emailRemindersEnabled &&
    other.frontendSettings == frontendSettings &&
    other.language == language &&
    other.name == name &&
    other.overdueTasksRemindersEnabled == overdueTasksRemindersEnabled &&
    other.overdueTasksRemindersTime == overdueTasksRemindersTime &&
    other.timezone == timezone &&
    other.weekStart == weekStart;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultProjectId == null ? 0 : defaultProjectId!.hashCode) +
    (discoverableByEmail == null ? 0 : discoverableByEmail!.hashCode) +
    (discoverableByName == null ? 0 : discoverableByName!.hashCode) +
    (emailRemindersEnabled == null ? 0 : emailRemindersEnabled!.hashCode) +
    (frontendSettings == null ? 0 : frontendSettings!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (overdueTasksRemindersEnabled == null ? 0 : overdueTasksRemindersEnabled!.hashCode) +
    (overdueTasksRemindersTime == null ? 0 : overdueTasksRemindersTime!.hashCode) +
    (timezone == null ? 0 : timezone!.hashCode) +
    (weekStart == null ? 0 : weekStart!.hashCode);

  @override
  String toString() => 'V1UserSettings[defaultProjectId=$defaultProjectId, discoverableByEmail=$discoverableByEmail, discoverableByName=$discoverableByName, emailRemindersEnabled=$emailRemindersEnabled, frontendSettings=$frontendSettings, language=$language, name=$name, overdueTasksRemindersEnabled=$overdueTasksRemindersEnabled, overdueTasksRemindersTime=$overdueTasksRemindersTime, timezone=$timezone, weekStart=$weekStart]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultProjectId != null) {
      json[r'default_project_id'] = this.defaultProjectId;
    } else {
      json[r'default_project_id'] = null;
    }
    if (this.discoverableByEmail != null) {
      json[r'discoverable_by_email'] = this.discoverableByEmail;
    } else {
      json[r'discoverable_by_email'] = null;
    }
    if (this.discoverableByName != null) {
      json[r'discoverable_by_name'] = this.discoverableByName;
    } else {
      json[r'discoverable_by_name'] = null;
    }
    if (this.emailRemindersEnabled != null) {
      json[r'email_reminders_enabled'] = this.emailRemindersEnabled;
    } else {
      json[r'email_reminders_enabled'] = null;
    }
    if (this.frontendSettings != null) {
      json[r'frontend_settings'] = this.frontendSettings;
    } else {
      json[r'frontend_settings'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.overdueTasksRemindersEnabled != null) {
      json[r'overdue_tasks_reminders_enabled'] = this.overdueTasksRemindersEnabled;
    } else {
      json[r'overdue_tasks_reminders_enabled'] = null;
    }
    if (this.overdueTasksRemindersTime != null) {
      json[r'overdue_tasks_reminders_time'] = this.overdueTasksRemindersTime;
    } else {
      json[r'overdue_tasks_reminders_time'] = null;
    }
    if (this.timezone != null) {
      json[r'timezone'] = this.timezone;
    } else {
      json[r'timezone'] = null;
    }
    if (this.weekStart != null) {
      json[r'week_start'] = this.weekStart;
    } else {
      json[r'week_start'] = null;
    }
    return json;
  }

  /// Returns a new [V1UserSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static V1UserSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "V1UserSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "V1UserSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return V1UserSettings(
        defaultProjectId: mapValueOfType<int>(json, r'default_project_id'),
        discoverableByEmail: mapValueOfType<bool>(json, r'discoverable_by_email'),
        discoverableByName: mapValueOfType<bool>(json, r'discoverable_by_name'),
        emailRemindersEnabled: mapValueOfType<bool>(json, r'email_reminders_enabled'),
        frontendSettings: mapValueOfType<Object>(json, r'frontend_settings'),
        language: mapValueOfType<String>(json, r'language'),
        name: mapValueOfType<String>(json, r'name'),
        overdueTasksRemindersEnabled: mapValueOfType<bool>(json, r'overdue_tasks_reminders_enabled'),
        overdueTasksRemindersTime: mapValueOfType<String>(json, r'overdue_tasks_reminders_time'),
        timezone: mapValueOfType<String>(json, r'timezone'),
        weekStart: mapValueOfType<int>(json, r'week_start'),
      );
    }
    return null;
  }

  static List<V1UserSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <V1UserSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = V1UserSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, V1UserSettings> mapFromJson(dynamic json) {
    final map = <String, V1UserSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = V1UserSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of V1UserSettings-objects as value to a dart map
  static Map<String, List<V1UserSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<V1UserSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = V1UserSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

