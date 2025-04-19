//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ModelsBucketConfigurationModeKind {
  /// Instantiate a new enum with the provided [value].
  const ModelsBucketConfigurationModeKind._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const BucketConfigurationModeNone = ModelsBucketConfigurationModeKind._(0);
  static const BucketConfigurationModeManual = ModelsBucketConfigurationModeKind._(1);
  static const BucketConfigurationModeFilter = ModelsBucketConfigurationModeKind._(2);

  /// List of all possible values in this [enum][ModelsBucketConfigurationModeKind].
  static const values = <ModelsBucketConfigurationModeKind>[
    BucketConfigurationModeNone,
    BucketConfigurationModeManual,
    BucketConfigurationModeFilter,
  ];

  static ModelsBucketConfigurationModeKind? fromJson(dynamic value) => ModelsBucketConfigurationModeKindTypeTransformer().decode(value);

  static List<ModelsBucketConfigurationModeKind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsBucketConfigurationModeKind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsBucketConfigurationModeKind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ModelsBucketConfigurationModeKind] to int,
/// and [decode] dynamic data back to [ModelsBucketConfigurationModeKind].
class ModelsBucketConfigurationModeKindTypeTransformer {
  factory ModelsBucketConfigurationModeKindTypeTransformer() => _instance ??= const ModelsBucketConfigurationModeKindTypeTransformer._();

  const ModelsBucketConfigurationModeKindTypeTransformer._();

  int encode(ModelsBucketConfigurationModeKind data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelsBucketConfigurationModeKind.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelsBucketConfigurationModeKind? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return ModelsBucketConfigurationModeKind.BucketConfigurationModeNone;
        case 1: return ModelsBucketConfigurationModeKind.BucketConfigurationModeManual;
        case 2: return ModelsBucketConfigurationModeKind.BucketConfigurationModeFilter;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModelsBucketConfigurationModeKindTypeTransformer] instance.
  static ModelsBucketConfigurationModeKindTypeTransformer? _instance;
}

