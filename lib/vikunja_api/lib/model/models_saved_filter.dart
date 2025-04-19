//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsSavedFilter {
  /// Returns a new [ModelsSavedFilter] instance.
  ModelsSavedFilter({
    this.created,
    this.description,
    this.filters,
    this.id,
    this.isFavorite,
    this.owner,
    this.title,
    this.updated,
  });

  /// A timestamp when this filter was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The description of the filter
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The actual filters this filter contains
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsTaskCollection? filters;

  /// The unique numeric id of this saved filter
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// True if the filter is a favorite. Favorite filters show up in a separate parent project together with favorite projects.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isFavorite;

  /// The user who owns this filter
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserUser? owner;

  /// The title of the filter.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// A timestamp when this filter was last updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsSavedFilter &&
    other.created == created &&
    other.description == description &&
    other.filters == filters &&
    other.id == id &&
    other.isFavorite == isFavorite &&
    other.owner == owner &&
    other.title == title &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (filters == null ? 0 : filters!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (isFavorite == null ? 0 : isFavorite!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'ModelsSavedFilter[created=$created, description=$description, filters=$filters, id=$id, isFavorite=$isFavorite, owner=$owner, title=$title, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.filters != null) {
      json[r'filters'] = this.filters;
    } else {
      json[r'filters'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.isFavorite != null) {
      json[r'is_favorite'] = this.isFavorite;
    } else {
      json[r'is_favorite'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
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

  /// Returns a new [ModelsSavedFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsSavedFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsSavedFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsSavedFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsSavedFilter(
        created: mapValueOfType<String>(json, r'created'),
        description: mapValueOfType<String>(json, r'description'),
        filters: ModelsTaskCollection.fromJson(json[r'filters']),
        id: mapValueOfType<int>(json, r'id'),
        isFavorite: mapValueOfType<bool>(json, r'is_favorite'),
        owner: UserUser.fromJson(json[r'owner']),
        title: mapValueOfType<String>(json, r'title'),
        updated: mapValueOfType<String>(json, r'updated'),
      );
    }
    return null;
  }

  static List<ModelsSavedFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsSavedFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsSavedFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsSavedFilter> mapFromJson(dynamic json) {
    final map = <String, ModelsSavedFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsSavedFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsSavedFilter-objects as value to a dart map
  static Map<String, List<ModelsSavedFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsSavedFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsSavedFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

