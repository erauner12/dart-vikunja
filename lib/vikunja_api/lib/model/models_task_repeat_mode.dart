//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ModelsTaskRepeatMode {
  /// Instantiate a new enum with the provided [value].
  const ModelsTaskRepeatMode._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const TaskRepeatModeDefault = ModelsTaskRepeatMode._(0);
  static const TaskRepeatModeMonth = ModelsTaskRepeatMode._(1);
  static const TaskRepeatModeFromCurrentDate = ModelsTaskRepeatMode._(2);

  /// List of all possible values in this [enum][ModelsTaskRepeatMode].
  static const values = <ModelsTaskRepeatMode>[
    TaskRepeatModeDefault,
    TaskRepeatModeMonth,
    TaskRepeatModeFromCurrentDate,
  ];

  static ModelsTaskRepeatMode? fromJson(dynamic value) => ModelsTaskRepeatModeTypeTransformer().decode(value);

  static List<ModelsTaskRepeatMode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsTaskRepeatMode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsTaskRepeatMode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ModelsTaskRepeatMode] to int,
/// and [decode] dynamic data back to [ModelsTaskRepeatMode].
class ModelsTaskRepeatModeTypeTransformer {
  factory ModelsTaskRepeatModeTypeTransformer() => _instance ??= const ModelsTaskRepeatModeTypeTransformer._();

  const ModelsTaskRepeatModeTypeTransformer._();

  int encode(ModelsTaskRepeatMode data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelsTaskRepeatMode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelsTaskRepeatMode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return ModelsTaskRepeatMode.TaskRepeatModeDefault;
        case 1: return ModelsTaskRepeatMode.TaskRepeatModeMonth;
        case 2: return ModelsTaskRepeatMode.TaskRepeatModeFromCurrentDate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModelsTaskRepeatModeTypeTransformer] instance.
  static ModelsTaskRepeatModeTypeTransformer? _instance;
}

