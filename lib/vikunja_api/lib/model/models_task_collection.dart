//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsTaskCollection {
  /// Returns a new [ModelsTaskCollection] instance.
  ModelsTaskCollection({
    this.filter,
    this.filterIncludeNulls,
    this.orderBy = const [],
    this.sortBy = const [],
  });

  /// The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filter;

  /// If set to true, the result will also include null values
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? filterIncludeNulls;

  /// The query parameter to order the items by. This can be either asc or desc, with asc being the default.
  List<String> orderBy;

  /// The query parameter to sort by. This is for ex. done, priority, etc.
  List<String> sortBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsTaskCollection &&
    other.filter == filter &&
    other.filterIncludeNulls == filterIncludeNulls &&
    _deepEquality.equals(other.orderBy, orderBy) &&
    _deepEquality.equals(other.sortBy, sortBy);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filter == null ? 0 : filter!.hashCode) +
    (filterIncludeNulls == null ? 0 : filterIncludeNulls!.hashCode) +
    (orderBy.hashCode) +
    (sortBy.hashCode);

  @override
  String toString() => 'ModelsTaskCollection[filter=$filter, filterIncludeNulls=$filterIncludeNulls, orderBy=$orderBy, sortBy=$sortBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.filterIncludeNulls != null) {
      json[r'filter_include_nulls'] = this.filterIncludeNulls;
    } else {
      json[r'filter_include_nulls'] = null;
    }
      json[r'order_by'] = this.orderBy;
      json[r'sort_by'] = this.sortBy;
    return json;
  }

  /// Returns a new [ModelsTaskCollection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsTaskCollection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsTaskCollection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsTaskCollection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsTaskCollection(
        filter: mapValueOfType<String>(json, r'filter'),
        filterIncludeNulls: mapValueOfType<bool>(json, r'filter_include_nulls'),
        orderBy: json[r'order_by'] is Iterable
            ? (json[r'order_by'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sortBy: json[r'sort_by'] is Iterable
            ? (json[r'sort_by'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ModelsTaskCollection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsTaskCollection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsTaskCollection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsTaskCollection> mapFromJson(dynamic json) {
    final map = <String, ModelsTaskCollection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsTaskCollection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsTaskCollection-objects as value to a dart map
  static Map<String, List<ModelsTaskCollection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsTaskCollection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsTaskCollection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

