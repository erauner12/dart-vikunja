//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ModelsRelationKind {
  /// Instantiate a new enum with the provided [value].
  const ModelsRelationKind._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RelationKindUnknown = ModelsRelationKind._(r'unknown');
  static const RelationKindSubtask = ModelsRelationKind._(r'subtask');
  static const RelationKindParenttask = ModelsRelationKind._(r'parenttask');
  static const RelationKindRelated = ModelsRelationKind._(r'related');
  static const RelationKindDuplicateOf = ModelsRelationKind._(r'duplicateof');
  static const RelationKindDuplicates = ModelsRelationKind._(r'duplicates');
  static const RelationKindBlocking = ModelsRelationKind._(r'blocking');
  static const RelationKindBlocked = ModelsRelationKind._(r'blocked');
  static const RelationKindPreceeds = ModelsRelationKind._(r'precedes');
  static const RelationKindFollows = ModelsRelationKind._(r'follows');
  static const RelationKindCopiedFrom = ModelsRelationKind._(r'copiedfrom');
  static const RelationKindCopiedTo = ModelsRelationKind._(r'copiedto');

  /// List of all possible values in this [enum][ModelsRelationKind].
  static const values = <ModelsRelationKind>[
    RelationKindUnknown,
    RelationKindSubtask,
    RelationKindParenttask,
    RelationKindRelated,
    RelationKindDuplicateOf,
    RelationKindDuplicates,
    RelationKindBlocking,
    RelationKindBlocked,
    RelationKindPreceeds,
    RelationKindFollows,
    RelationKindCopiedFrom,
    RelationKindCopiedTo,
  ];

  static ModelsRelationKind? fromJson(dynamic value) => ModelsRelationKindTypeTransformer().decode(value);

  static List<ModelsRelationKind> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsRelationKind>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsRelationKind.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ModelsRelationKind] to String,
/// and [decode] dynamic data back to [ModelsRelationKind].
class ModelsRelationKindTypeTransformer {
  factory ModelsRelationKindTypeTransformer() => _instance ??= const ModelsRelationKindTypeTransformer._();

  const ModelsRelationKindTypeTransformer._();

  String encode(ModelsRelationKind data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelsRelationKind.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelsRelationKind? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'unknown': return ModelsRelationKind.RelationKindUnknown;
        case r'subtask': return ModelsRelationKind.RelationKindSubtask;
        case r'parenttask': return ModelsRelationKind.RelationKindParenttask;
        case r'related': return ModelsRelationKind.RelationKindRelated;
        case r'duplicateof': return ModelsRelationKind.RelationKindDuplicateOf;
        case r'duplicates': return ModelsRelationKind.RelationKindDuplicates;
        case r'blocking': return ModelsRelationKind.RelationKindBlocking;
        case r'blocked': return ModelsRelationKind.RelationKindBlocked;
        case r'precedes': return ModelsRelationKind.RelationKindPreceeds;
        case r'follows': return ModelsRelationKind.RelationKindFollows;
        case r'copiedfrom': return ModelsRelationKind.RelationKindCopiedFrom;
        case r'copiedto': return ModelsRelationKind.RelationKindCopiedTo;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModelsRelationKindTypeTransformer] instance.
  static ModelsRelationKindTypeTransformer? _instance;
}

