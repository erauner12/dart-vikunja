//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsProjectView {
  /// Returns a new [ModelsProjectView] instance.
  ModelsProjectView({
    this.bucketConfiguration = const [],
    this.bucketConfigurationMode,
    this.created,
    this.defaultBucketId,
    this.doneBucketId,
    this.filter,
    this.id,
    this.position,
    this.projectId,
    this.title,
    this.updated,
    this.viewKind,
  });

  /// When the bucket configuration mode is not `manual`, this field holds the options of that configuration.
  List<ModelsProjectViewBucketConfiguration> bucketConfiguration;

  /// The bucket configuration mode. Can be `none`, `manual` or `filter`. `manual` allows to move tasks between buckets as you normally would. `filter` creates buckets based on a filter for each bucket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsBucketConfigurationModeKind? bucketConfigurationMode;

  /// A timestamp when this reaction was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The ID of the bucket where new tasks without a bucket are added to. By default, this is the leftmost bucket in a view.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? defaultBucketId;

  /// If tasks are moved to the done bucket, they are marked as done. If they are marked as done individually, they are moved into the done bucket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? doneBucketId;

  /// The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filter;

  /// The unique numeric id of this view
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The position of this view in the list. The list of all views will be sorted by this parameter.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? position;

  /// The project this view belongs to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? projectId;

  /// The title of this view
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// A timestamp when this view was updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  /// The kind of this view. Can be `list`, `gantt`, `table` or `kanban`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsProjectViewKind? viewKind;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsProjectView &&
    _deepEquality.equals(other.bucketConfiguration, bucketConfiguration) &&
    other.bucketConfigurationMode == bucketConfigurationMode &&
    other.created == created &&
    other.defaultBucketId == defaultBucketId &&
    other.doneBucketId == doneBucketId &&
    other.filter == filter &&
    other.id == id &&
    other.position == position &&
    other.projectId == projectId &&
    other.title == title &&
    other.updated == updated &&
    other.viewKind == viewKind;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucketConfiguration.hashCode) +
    (bucketConfigurationMode == null ? 0 : bucketConfigurationMode!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (defaultBucketId == null ? 0 : defaultBucketId!.hashCode) +
    (doneBucketId == null ? 0 : doneBucketId!.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (viewKind == null ? 0 : viewKind!.hashCode);

  @override
  String toString() => 'ModelsProjectView[bucketConfiguration=$bucketConfiguration, bucketConfigurationMode=$bucketConfigurationMode, created=$created, defaultBucketId=$defaultBucketId, doneBucketId=$doneBucketId, filter=$filter, id=$id, position=$position, projectId=$projectId, title=$title, updated=$updated, viewKind=$viewKind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bucket_configuration'] = this.bucketConfiguration;
    if (this.bucketConfigurationMode != null) {
      json[r'bucket_configuration_mode'] = this.bucketConfigurationMode;
    } else {
      json[r'bucket_configuration_mode'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.defaultBucketId != null) {
      json[r'default_bucket_id'] = this.defaultBucketId;
    } else {
      json[r'default_bucket_id'] = null;
    }
    if (this.doneBucketId != null) {
      json[r'done_bucket_id'] = this.doneBucketId;
    } else {
      json[r'done_bucket_id'] = null;
    }
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.projectId != null) {
      json[r'project_id'] = this.projectId;
    } else {
      json[r'project_id'] = null;
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
    if (this.viewKind != null) {
      json[r'view_kind'] = this.viewKind;
    } else {
      json[r'view_kind'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsProjectView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsProjectView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsProjectView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsProjectView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsProjectView(
        bucketConfiguration: ModelsProjectViewBucketConfiguration.listFromJson(json[r'bucket_configuration']),
        bucketConfigurationMode: ModelsBucketConfigurationModeKind.fromJson(json[r'bucket_configuration_mode']),
        created: mapValueOfType<String>(json, r'created'),
        defaultBucketId: mapValueOfType<int>(json, r'default_bucket_id'),
        doneBucketId: mapValueOfType<int>(json, r'done_bucket_id'),
        filter: mapValueOfType<String>(json, r'filter'),
        id: mapValueOfType<int>(json, r'id'),
        position: num.parse('${json[r'position']}'),
        projectId: mapValueOfType<int>(json, r'project_id'),
        title: mapValueOfType<String>(json, r'title'),
        updated: mapValueOfType<String>(json, r'updated'),
        viewKind: ModelsProjectViewKind.fromJson(json[r'view_kind']),
      );
    }
    return null;
  }

  static List<ModelsProjectView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsProjectView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsProjectView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsProjectView> mapFromJson(dynamic json) {
    final map = <String, ModelsProjectView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsProjectView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsProjectView-objects as value to a dart map
  static Map<String, List<ModelsProjectView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsProjectView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsProjectView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

