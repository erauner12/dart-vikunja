//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ModelsReminderRelation {
  /// Instantiate a new enum with the provided [value].
  const ModelsReminderRelation._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ReminderRelationDueDate = ModelsReminderRelation._(r'due_date');
  static const ReminderRelationStartDate = ModelsReminderRelation._(r'start_date');
  static const ReminderRelationEndDate = ModelsReminderRelation._(r'end_date');

  /// List of all possible values in this [enum][ModelsReminderRelation].
  static const values = <ModelsReminderRelation>[
    ReminderRelationDueDate,
    ReminderRelationStartDate,
    ReminderRelationEndDate,
  ];

  static ModelsReminderRelation? fromJson(dynamic value) => ModelsReminderRelationTypeTransformer().decode(value);

  static List<ModelsReminderRelation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsReminderRelation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsReminderRelation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ModelsReminderRelation] to String,
/// and [decode] dynamic data back to [ModelsReminderRelation].
class ModelsReminderRelationTypeTransformer {
  factory ModelsReminderRelationTypeTransformer() => _instance ??= const ModelsReminderRelationTypeTransformer._();

  const ModelsReminderRelationTypeTransformer._();

  String encode(ModelsReminderRelation data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelsReminderRelation.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelsReminderRelation? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'due_date': return ModelsReminderRelation.ReminderRelationDueDate;
        case r'start_date': return ModelsReminderRelation.ReminderRelationStartDate;
        case r'end_date': return ModelsReminderRelation.ReminderRelationEndDate;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ModelsReminderRelationTypeTransformer] instance.
  static ModelsReminderRelationTypeTransformer? _instance;
}

