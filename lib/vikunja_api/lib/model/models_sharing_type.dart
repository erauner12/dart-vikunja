//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ModelsSharingType {
  /// Instantiate a new enum with the provided [value].
  const ModelsSharingType._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const SharingTypeUnknown = ModelsSharingType._(0);
  static const SharingTypeWithoutPassword = ModelsSharingType._(1);
  static const SharingTypeWithPassword = ModelsSharingType._(2);

  /// List of all possible values in this [enum][ModelsSharingType].
  static const values = <ModelsSharingType>[
    SharingTypeUnknown,
    SharingTypeWithoutPassword,
    SharingTypeWithPassword,
  ];

  static ModelsSharingType? fromJson(dynamic value) => ModelsSharingTypeTypeTransformer().decode(value);

  static List<ModelsSharingType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsSharingType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsSharingType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ModelsSharingType] to int,
/// and [decode] dynamic data back to [ModelsSharingType].
class ModelsSharingTypeTypeTransformer {
  factory ModelsSharingTypeTypeTransformer() => _instance ??= const ModelsSharingTypeTypeTransformer._();

  const ModelsSharingTypeTypeTransformer._();

  int encode(ModelsSharingType data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelsSharingType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelsSharingType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return ModelsSharingType.SharingTypeUnknown;
        case 1: return ModelsSharingType.SharingTypeWithoutPassword;
        case 2: return ModelsSharingType.SharingTypeWithPassword;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModelsSharingTypeTypeTransformer] instance.
  static ModelsSharingTypeTypeTransformer? _instance;
}

