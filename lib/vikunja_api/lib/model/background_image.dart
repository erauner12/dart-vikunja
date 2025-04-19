//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BackgroundImage {
  /// Returns a new [BackgroundImage] instance.
  BackgroundImage({
    this.blurHash,
    this.id,
    this.info,
    this.thumb,
    this.url,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? blurHash;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// This can be used to supply extra information from an image provider to clients
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? info;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thumb;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackgroundImage &&
    other.blurHash == blurHash &&
    other.id == id &&
    other.info == info &&
    other.thumb == thumb &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blurHash == null ? 0 : blurHash!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (info == null ? 0 : info!.hashCode) +
    (thumb == null ? 0 : thumb!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'BackgroundImage[blurHash=$blurHash, id=$id, info=$info, thumb=$thumb, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blurHash != null) {
      json[r'blur_hash'] = this.blurHash;
    } else {
      json[r'blur_hash'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.info != null) {
      json[r'info'] = this.info;
    } else {
      json[r'info'] = null;
    }
    if (this.thumb != null) {
      json[r'thumb'] = this.thumb;
    } else {
      json[r'thumb'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [BackgroundImage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackgroundImage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BackgroundImage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BackgroundImage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BackgroundImage(
        blurHash: mapValueOfType<String>(json, r'blur_hash'),
        id: mapValueOfType<String>(json, r'id'),
        info: mapValueOfType<Object>(json, r'info'),
        thumb: mapValueOfType<String>(json, r'thumb'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<BackgroundImage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackgroundImage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackgroundImage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackgroundImage> mapFromJson(dynamic json) {
    final map = <String, BackgroundImage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackgroundImage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackgroundImage-objects as value to a dart map
  static Map<String, List<BackgroundImage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackgroundImage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackgroundImage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

