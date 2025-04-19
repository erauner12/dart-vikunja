//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsLinkSharing {
  /// Returns a new [ModelsLinkSharing] instance.
  ModelsLinkSharing({
    this.created,
    this.hash,
    this.id,
    this.name,
    this.password,
    this.right,
    this.sharedBy,
    this.sharingType,
    this.updated,
  });

  /// A timestamp when this project was shared. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The public id to get this shared project
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hash;

  /// The ID of the shared thing
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The name of this link share. All actions someone takes while being authenticated with that link will appear with that name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The password of this link share. You can only set it, not retrieve it after the link share has been created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  /// The right this project is shared with. 0 = Read only, 1 = Read & Write, 2 = Admin. See the docs for more details.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsRight? right;

  /// The user who shared this project
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserUser? sharedBy;

  /// The kind of this link. 0 = undefined, 1 = without password, 2 = with password.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsSharingType? sharingType;

  /// A timestamp when this share was last updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsLinkSharing &&
    other.created == created &&
    other.hash == hash &&
    other.id == id &&
    other.name == name &&
    other.password == password &&
    other.right == right &&
    other.sharedBy == sharedBy &&
    other.sharingType == sharingType &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (hash == null ? 0 : hash!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (right == null ? 0 : right!.hashCode) +
    (sharedBy == null ? 0 : sharedBy!.hashCode) +
    (sharingType == null ? 0 : sharingType!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'ModelsLinkSharing[created=$created, hash=$hash, id=$id, name=$name, password=$password, right=$right, sharedBy=$sharedBy, sharingType=$sharingType, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.hash != null) {
      json[r'hash'] = this.hash;
    } else {
      json[r'hash'] = null;
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
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.right != null) {
      json[r'right'] = this.right;
    } else {
      json[r'right'] = null;
    }
    if (this.sharedBy != null) {
      json[r'shared_by'] = this.sharedBy;
    } else {
      json[r'shared_by'] = null;
    }
    if (this.sharingType != null) {
      json[r'sharing_type'] = this.sharingType;
    } else {
      json[r'sharing_type'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsLinkSharing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsLinkSharing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsLinkSharing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsLinkSharing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsLinkSharing(
        created: mapValueOfType<String>(json, r'created'),
        hash: mapValueOfType<String>(json, r'hash'),
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        password: mapValueOfType<String>(json, r'password'),
        right: ModelsRight.fromJson(json[r'right']),
        sharedBy: UserUser.fromJson(json[r'shared_by']),
        sharingType: ModelsSharingType.fromJson(json[r'sharing_type']),
        updated: mapValueOfType<String>(json, r'updated'),
      );
    }
    return null;
  }

  static List<ModelsLinkSharing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsLinkSharing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsLinkSharing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsLinkSharing> mapFromJson(dynamic json) {
    final map = <String, ModelsLinkSharing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsLinkSharing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsLinkSharing-objects as value to a dart map
  static Map<String, List<ModelsLinkSharing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsLinkSharing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsLinkSharing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

