//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ModelsRight {
  /// Instantiate a new enum with the provided [value].
  const ModelsRight._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const RightRead = ModelsRight._(0);
  static const RightWrite = ModelsRight._(1);
  static const RightAdmin = ModelsRight._(2);

  /// List of all possible values in this [enum][ModelsRight].
  static const values = <ModelsRight>[
    RightRead,
    RightWrite,
    RightAdmin,
  ];

  static ModelsRight? fromJson(dynamic value) => ModelsRightTypeTransformer().decode(value);

  static List<ModelsRight> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsRight>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsRight.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ModelsRight] to int,
/// and [decode] dynamic data back to [ModelsRight].
class ModelsRightTypeTransformer {
  factory ModelsRightTypeTransformer() => _instance ??= const ModelsRightTypeTransformer._();

  const ModelsRightTypeTransformer._();

  int encode(ModelsRight data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelsRight.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelsRight? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return ModelsRight.RightRead;
        case 1: return ModelsRight.RightWrite;
        case 2: return ModelsRight.RightAdmin;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModelsRightTypeTransformer] instance.
  static ModelsRightTypeTransformer? _instance;
}

