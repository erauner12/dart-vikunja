//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ModelsProjectViewKind {
  /// Instantiate a new enum with the provided [value].
  const ModelsProjectViewKind._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const ProjectViewKindList = ModelsProjectViewKind._(0);
  static const ProjectViewKindGantt = ModelsProjectViewKind._(1);
  static const ProjectViewKindTable = ModelsProjectViewKind._(2);
  static const ProjectViewKindKanban = ModelsProjectViewKind._(3);

  /// List of all possible values in this [enum][ModelsProjectViewKind].
  static const values = <ModelsProjectViewKind>[
    ProjectViewKindList,
    ProjectViewKindGantt,
    ProjectViewKindTable,
    ProjectViewKindKanban,
  ];

  static ModelsProjectViewKind? fromJson(dynamic value) => ModelsProjectViewKindTypeTransformer().decode(value);

  static List<ModelsProjectViewKind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsProjectViewKind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsProjectViewKind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ModelsProjectViewKind] to int,
/// and [decode] dynamic data back to [ModelsProjectViewKind].
class ModelsProjectViewKindTypeTransformer {
  factory ModelsProjectViewKindTypeTransformer() => _instance ??= const ModelsProjectViewKindTypeTransformer._();

  const ModelsProjectViewKindTypeTransformer._();

  int encode(ModelsProjectViewKind data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelsProjectViewKind.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelsProjectViewKind? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0: return ModelsProjectViewKind.ProjectViewKindList;
        case 1: return ModelsProjectViewKind.ProjectViewKindGantt;
        case 2: return ModelsProjectViewKind.ProjectViewKindTable;
        case 3: return ModelsProjectViewKind.ProjectViewKindKanban;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModelsProjectViewKindTypeTransformer] instance.
  static ModelsProjectViewKindTypeTransformer? _instance;
}

