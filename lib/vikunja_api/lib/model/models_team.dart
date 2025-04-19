//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsTeam {
  /// Returns a new [ModelsTeam] instance.
  ModelsTeam({
    this.created,
    this.createdBy,
    this.description,
    this.id,
    this.includePublic,
    this.isPublic,
    this.members = const [],
    this.name,
    this.oidcId,
    this.updated,
  });

  /// A timestamp when this relation was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The user who created this team.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserUser? createdBy;

  /// The team's description.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The unique, numeric id of this team.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// Query parameter controlling whether to include public projects or not
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includePublic;

  /// Defines wether the team should be publicly discoverable when sharing a project
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPublic;

  /// An array of all members in this team.
  List<ModelsTeamUser> members;

  /// The name of this team.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The team's oidc id delivered by the oidc provider
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oidcId;

  /// A timestamp when this relation was last updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsTeam &&
    other.created == created &&
    other.createdBy == createdBy &&
    other.description == description &&
    other.id == id &&
    other.includePublic == includePublic &&
    other.isPublic == isPublic &&
    _deepEquality.equals(other.members, members) &&
    other.name == name &&
    other.oidcId == oidcId &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (includePublic == null ? 0 : includePublic!.hashCode) +
    (isPublic == null ? 0 : isPublic!.hashCode) +
    (members.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (oidcId == null ? 0 : oidcId!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'ModelsTeam[created=$created, createdBy=$createdBy, description=$description, id=$id, includePublic=$includePublic, isPublic=$isPublic, members=$members, name=$name, oidcId=$oidcId, updated=$updated]';

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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.includePublic != null) {
      json[r'include_public'] = this.includePublic;
    } else {
      json[r'include_public'] = null;
    }
    if (this.isPublic != null) {
      json[r'is_public'] = this.isPublic;
    } else {
      json[r'is_public'] = null;
    }
      json[r'members'] = this.members;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.oidcId != null) {
      json[r'oidc_id'] = this.oidcId;
    } else {
      json[r'oidc_id'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsTeam] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsTeam? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsTeam[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsTeam[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsTeam(
        created: mapValueOfType<String>(json, r'created'),
        createdBy: UserUser.fromJson(json[r'created_by']),
        description: mapValueOfType<String>(json, r'description'),
        id: mapValueOfType<int>(json, r'id'),
        includePublic: mapValueOfType<bool>(json, r'include_public'),
        isPublic: mapValueOfType<bool>(json, r'is_public'),
        members: ModelsTeamUser.listFromJson(json[r'members']),
        name: mapValueOfType<String>(json, r'name'),
        oidcId: mapValueOfType<String>(json, r'oidc_id'),
        updated: mapValueOfType<String>(json, r'updated'),
      );
    }
    return null;
  }

  static List<ModelsTeam> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsTeam>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsTeam.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsTeam> mapFromJson(dynamic json) {
    final map = <String, ModelsTeam>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsTeam.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsTeam-objects as value to a dart map
  static Map<String, List<ModelsTeam>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsTeam>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsTeam.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

