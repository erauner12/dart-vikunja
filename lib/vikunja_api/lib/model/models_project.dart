//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsProject {
  /// Returns a new [ModelsProject] instance.
  ModelsProject({
    this.backgroundBlurHash,
    this.backgroundInformation,
    this.created,
    this.description,
    this.hexColor,
    this.id,
    this.identifier,
    this.isArchived,
    this.isFavorite,
    this.owner,
    this.parentProjectId,
    this.position,
    this.subscription,
    this.title,
    this.updated,
    this.views = const [],
  });

  /// Contains a very small version of the project background to use as a blurry preview until the actual background is loaded. Check out https://blurha.sh/ to learn how it works.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backgroundBlurHash;

  /// Holds extra information about the background set since some background providers require attribution or similar. If not null, the background can be accessed at /projects/{projectID}/background
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? backgroundInformation;

  /// A timestamp when this project was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The description of the project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The hex color of this project
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hexColor;

  /// The unique, numeric id of this project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The unique project short identifier. Used to build task identifiers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? identifier;

  /// Whether a project is archived.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isArchived;

  /// True if a project is a favorite. Favorite projects show up in a separate parent project. This value depends on the user making the call to the api.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isFavorite;

  /// The user who created this project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserUser? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parentProjectId;

  /// The position this project has when querying all projects. See the tasks.position property on how to use this.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? position;

  /// The subscription status for the user reading this project. You can only read this property, use the subscription endpoints to modify it. Will only returned when retreiving one project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsSubscription? subscription;

  /// The title of the project. You'll see this in the overview.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// A timestamp when this project was last updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  List<ModelsProjectView> views;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsProject &&
    other.backgroundBlurHash == backgroundBlurHash &&
    other.backgroundInformation == backgroundInformation &&
    other.created == created &&
    other.description == description &&
    other.hexColor == hexColor &&
    other.id == id &&
    other.identifier == identifier &&
    other.isArchived == isArchived &&
    other.isFavorite == isFavorite &&
    other.owner == owner &&
    other.parentProjectId == parentProjectId &&
    other.position == position &&
    other.subscription == subscription &&
    other.title == title &&
    other.updated == updated &&
    _deepEquality.equals(other.views, views);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backgroundBlurHash == null ? 0 : backgroundBlurHash!.hashCode) +
    (backgroundInformation == null ? 0 : backgroundInformation!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (hexColor == null ? 0 : hexColor!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (identifier == null ? 0 : identifier!.hashCode) +
    (isArchived == null ? 0 : isArchived!.hashCode) +
    (isFavorite == null ? 0 : isFavorite!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (parentProjectId == null ? 0 : parentProjectId!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (subscription == null ? 0 : subscription!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (views.hashCode);

  @override
  String toString() => 'ModelsProject[backgroundBlurHash=$backgroundBlurHash, backgroundInformation=$backgroundInformation, created=$created, description=$description, hexColor=$hexColor, id=$id, identifier=$identifier, isArchived=$isArchived, isFavorite=$isFavorite, owner=$owner, parentProjectId=$parentProjectId, position=$position, subscription=$subscription, title=$title, updated=$updated, views=$views]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.backgroundBlurHash != null) {
      json[r'background_blur_hash'] = this.backgroundBlurHash;
    } else {
      json[r'background_blur_hash'] = null;
    }
    if (this.backgroundInformation != null) {
      json[r'background_information'] = this.backgroundInformation;
    } else {
      json[r'background_information'] = null;
    }
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
    if (this.identifier != null) {
      json[r'identifier'] = this.identifier;
    } else {
      json[r'identifier'] = null;
    }
    if (this.isArchived != null) {
      json[r'is_archived'] = this.isArchived;
    } else {
      json[r'is_archived'] = null;
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
    if (this.parentProjectId != null) {
      json[r'parent_project_id'] = this.parentProjectId;
    } else {
      json[r'parent_project_id'] = null;
    }
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.subscription != null) {
      json[r'subscription'] = this.subscription;
    } else {
      json[r'subscription'] = null;
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
      json[r'views'] = this.views;
    return json;
  }

  /// Returns a new [ModelsProject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsProject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsProject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsProject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsProject(
        backgroundBlurHash: mapValueOfType<String>(json, r'background_blur_hash'),
        backgroundInformation: mapValueOfType<Object>(json, r'background_information'),
        created: mapValueOfType<String>(json, r'created'),
        description: mapValueOfType<String>(json, r'description'),
        hexColor: mapValueOfType<String>(json, r'hex_color'),
        id: mapValueOfType<int>(json, r'id'),
        identifier: mapValueOfType<String>(json, r'identifier'),
        isArchived: mapValueOfType<bool>(json, r'is_archived'),
        isFavorite: mapValueOfType<bool>(json, r'is_favorite'),
        owner: UserUser.fromJson(json[r'owner']),
        parentProjectId: mapValueOfType<int>(json, r'parent_project_id'),
        position: num.parse('${json[r'position']}'),
        subscription: ModelsSubscription.fromJson(json[r'subscription']),
        title: mapValueOfType<String>(json, r'title'),
        updated: mapValueOfType<String>(json, r'updated'),
        views: ModelsProjectView.listFromJson(json[r'views']),
      );
    }
    return null;
  }

  static List<ModelsProject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsProject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsProject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsProject> mapFromJson(dynamic json) {
    final map = <String, ModelsProject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsProject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsProject-objects as value to a dart map
  static Map<String, List<ModelsProject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsProject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsProject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

