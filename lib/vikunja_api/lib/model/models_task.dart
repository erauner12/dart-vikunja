//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsTask {
  /// Returns a new [ModelsTask] instance.
  ModelsTask({
    this.assignees = const [],
    this.attachments = const [],
    this.bucketId,
    this.coverImageAttachmentId,
    this.created,
    this.createdBy,
    this.description,
    this.done,
    this.doneAt,
    this.dueDate,
    this.endDate,
    this.hexColor,
    this.id,
    this.identifier,
    this.index,
    this.isFavorite,
    this.labels = const [],
    this.percentDone,
    this.position,
    this.priority,
    this.projectId,
    this.reactions,
    this.relatedTasks,
    this.reminders = const [],
    this.repeatAfter,
    this.repeatMode,
    this.startDate,
    this.subscription,
    this.title,
    this.updated,
  });

  /// An array of users who are assigned to this task
  List<UserUser> assignees;

  /// All attachments this task has. This property is read-onlym, you must use the separate endpoint to add attachments to a task.
  List<ModelsTaskAttachment> attachments;

  /// The bucket id. Will only be populated when the task is accessed via a view with buckets. Can be used to move a task between buckets. In that case, the new bucket must be in the same view as the old one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bucketId;

  /// If this task has a cover image, the field will return the id of the attachment that is the cover image.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? coverImageAttachmentId;

  /// A timestamp when this task was created. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// The user who initially created the task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserUser? createdBy;

  /// The task description.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Whether a task is done or not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? done;

  /// The time when a task was marked as done.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? doneAt;

  /// The time when the task is due.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dueDate;

  /// When this task ends.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endDate;

  /// The task color in hex
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hexColor;

  /// The unique, numeric id of this task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The task identifier, based on the project identifier and the task's index
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? identifier;

  /// The task index, calculated per project
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? index;

  /// True if a task is a favorite task. Favorite tasks show up in a separate \"Important\" project. This value depends on the user making the call to the api.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isFavorite;

  /// An array of labels which are associated with this task. This property is read-only, you must use the separate endpoint to add labels to a task.
  List<ModelsLabel> labels;

  /// Determines how far a task is left from being done
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? percentDone;

  /// The position of the task - any task project can be sorted as usual by this parameter. When accessing tasks via views with buckets, this is primarily used to sort them based on a range. Positions are always saved per view. They will automatically be set if you request the tasks through a view endpoint, otherwise they will always be 0. To update them, take a look at the Task Position endpoint.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? position;

  /// The task priority. Can be anything you want, it is possible to sort by this later.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? priority;

  /// The project this task belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? projectId;

  /// Reactions on that task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Map<String, List<UserUser>>? reactions;

  /// All related tasks, grouped by their relation kind
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Map<String, List<ModelsTask>>? relatedTasks;

  /// An array of reminders that are associated with this task.
  List<ModelsTaskReminder> reminders;

  /// An amount in seconds this task repeats itself. If this is set, when marking the task as done, it will mark itself as \"undone\" and then increase all remindes and the due date by its amount.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? repeatAfter;

  /// Can have three possible values which will trigger when the task is marked as done: 0 = repeats after the amount specified in repeat_after, 1 = repeats all dates each months (ignoring repeat_after), 3 = repeats from the current date rather than the last set date.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsTaskRepeatMode? repeatMode;

  /// When this task starts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startDate;

  /// The subscription status for the user reading this task. You can only read this property, use the subscription endpoints to modify it. Will only returned when retrieving one task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelsSubscription? subscription;

  /// The task text. This is what you'll see in the project.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// A timestamp when this task was last updated. You cannot change this value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsTask &&
    _deepEquality.equals(other.assignees, assignees) &&
    _deepEquality.equals(other.attachments, attachments) &&
    other.bucketId == bucketId &&
    other.coverImageAttachmentId == coverImageAttachmentId &&
    other.created == created &&
    other.createdBy == createdBy &&
    other.description == description &&
    other.done == done &&
    other.doneAt == doneAt &&
    other.dueDate == dueDate &&
    other.endDate == endDate &&
    other.hexColor == hexColor &&
    other.id == id &&
    other.identifier == identifier &&
    other.index == index &&
    other.isFavorite == isFavorite &&
    _deepEquality.equals(other.labels, labels) &&
    other.percentDone == percentDone &&
    other.position == position &&
    other.priority == priority &&
    other.projectId == projectId &&
    _deepEquality.equals(other.reactions, reactions) &&
    _deepEquality.equals(other.relatedTasks, relatedTasks) &&
    _deepEquality.equals(other.reminders, reminders) &&
    other.repeatAfter == repeatAfter &&
    other.repeatMode == repeatMode &&
    other.startDate == startDate &&
    other.subscription == subscription &&
    other.title == title &&
    other.updated == updated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignees.hashCode) +
    (attachments.hashCode) +
    (bucketId == null ? 0 : bucketId!.hashCode) +
    (coverImageAttachmentId == null ? 0 : coverImageAttachmentId!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (done == null ? 0 : done!.hashCode) +
    (doneAt == null ? 0 : doneAt!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (hexColor == null ? 0 : hexColor!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (identifier == null ? 0 : identifier!.hashCode) +
    (index == null ? 0 : index!.hashCode) +
    (isFavorite == null ? 0 : isFavorite!.hashCode) +
    (labels.hashCode) +
    (percentDone == null ? 0 : percentDone!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (reactions == null ? 0 : reactions!.hashCode) +
    (relatedTasks == null ? 0 : relatedTasks!.hashCode) +
    (reminders.hashCode) +
    (repeatAfter == null ? 0 : repeatAfter!.hashCode) +
    (repeatMode == null ? 0 : repeatMode!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (subscription == null ? 0 : subscription!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updated == null ? 0 : updated!.hashCode);

  @override
  String toString() => 'ModelsTask[assignees=$assignees, attachments=$attachments, bucketId=$bucketId, coverImageAttachmentId=$coverImageAttachmentId, created=$created, createdBy=$createdBy, description=$description, done=$done, doneAt=$doneAt, dueDate=$dueDate, endDate=$endDate, hexColor=$hexColor, id=$id, identifier=$identifier, index=$index, isFavorite=$isFavorite, labels=$labels, percentDone=$percentDone, position=$position, priority=$priority, projectId=$projectId, reactions=$reactions, relatedTasks=$relatedTasks, reminders=$reminders, repeatAfter=$repeatAfter, repeatMode=$repeatMode, startDate=$startDate, subscription=$subscription, title=$title, updated=$updated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assignees'] = this.assignees;
      json[r'attachments'] = this.attachments;
    if (this.bucketId != null) {
      json[r'bucket_id'] = this.bucketId;
    } else {
      json[r'bucket_id'] = null;
    }
    if (this.coverImageAttachmentId != null) {
      json[r'cover_image_attachment_id'] = this.coverImageAttachmentId;
    } else {
      json[r'cover_image_attachment_id'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.createdBy != null) {
      json[r'created_by'] = this.createdBy;
    } else {
      json[r'created_by'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.done != null) {
      json[r'done'] = this.done;
    } else {
      json[r'done'] = null;
    }
    if (this.doneAt != null) {
      json[r'done_at'] = this.doneAt;
    } else {
      json[r'done_at'] = null;
    }
    if (this.dueDate != null) {
      json[r'due_date'] = this.dueDate;
    } else {
      json[r'due_date'] = null;
    }
    if (this.endDate != null) {
      json[r'end_date'] = this.endDate;
    } else {
      json[r'end_date'] = null;
    }
    if (this.hexColor != null) {
      json[r'hex_color'] = this.hexColor;
    } else {
      json[r'hex_color'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.identifier != null) {
      json[r'identifier'] = this.identifier;
    } else {
      json[r'identifier'] = null;
    }
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
    if (this.isFavorite != null) {
      json[r'is_favorite'] = this.isFavorite;
    } else {
      json[r'is_favorite'] = null;
    }
      json[r'labels'] = this.labels;
    if (this.percentDone != null) {
      json[r'percent_done'] = this.percentDone;
    } else {
      json[r'percent_done'] = null;
    }
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.projectId != null) {
      json[r'project_id'] = this.projectId;
    } else {
      json[r'project_id'] = null;
    }
    if (this.reactions != null) {
      json[r'reactions'] = this.reactions;
    } else {
      json[r'reactions'] = null;
    }
    if (this.relatedTasks != null) {
      json[r'related_tasks'] = this.relatedTasks;
    } else {
      json[r'related_tasks'] = null;
    }
      json[r'reminders'] = this.reminders;
    if (this.repeatAfter != null) {
      json[r'repeat_after'] = this.repeatAfter;
    } else {
      json[r'repeat_after'] = null;
    }
    if (this.repeatMode != null) {
      json[r'repeat_mode'] = this.repeatMode;
    } else {
      json[r'repeat_mode'] = null;
    }
    if (this.startDate != null) {
      json[r'start_date'] = this.startDate;
    } else {
      json[r'start_date'] = null;
    }
    if (this.subscription != null) {
      json[r'subscription'] = this.subscription;
    } else {
      json[r'subscription'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsTask] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsTask? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsTask[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsTask[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsTask(
        assignees: UserUser.listFromJson(json[r'assignees']),
        attachments: ModelsTaskAttachment.listFromJson(json[r'attachments']),
        bucketId: mapValueOfType<int>(json, r'bucket_id'),
        coverImageAttachmentId: mapValueOfType<int>(json, r'cover_image_attachment_id'),
        created: mapValueOfType<String>(json, r'created'),
        createdBy: UserUser.fromJson(json[r'created_by']),
        description: mapValueOfType<String>(json, r'description'),
        done: mapValueOfType<bool>(json, r'done'),
        doneAt: mapValueOfType<String>(json, r'done_at'),
        dueDate: mapValueOfType<String>(json, r'due_date'),
        endDate: mapValueOfType<String>(json, r'end_date'),
        hexColor: mapValueOfType<String>(json, r'hex_color'),
        id: mapValueOfType<int>(json, r'id'),
        identifier: mapValueOfType<String>(json, r'identifier'),
        index: mapValueOfType<int>(json, r'index'),
        isFavorite: mapValueOfType<bool>(json, r'is_favorite'),
        labels: ModelsLabel.listFromJson(json[r'labels']),
        percentDone: num.parse('${json[r'percent_done']}'),
        position: num.parse('${json[r'position']}'),
        priority: mapValueOfType<int>(json, r'priority'),
        projectId: mapValueOfType<int>(json, r'project_id'),
        reactions: json[r'reactions'] == null
          ? null
            : UserUser.mapListFromJson(json[r'reactions']),
        relatedTasks: json[r'related_tasks'] == null
          ? null
            : ModelsTask.mapListFromJson(json[r'related_tasks']),
        reminders: ModelsTaskReminder.listFromJson(json[r'reminders']),
        repeatAfter: mapValueOfType<int>(json, r'repeat_after'),
        repeatMode: ModelsTaskRepeatMode.fromJson(json[r'repeat_mode']),
        startDate: mapValueOfType<String>(json, r'start_date'),
        subscription: ModelsSubscription.fromJson(json[r'subscription']),
        title: mapValueOfType<String>(json, r'title'),
        updated: mapValueOfType<String>(json, r'updated'),
      );
    }
    return null;
  }

  static List<ModelsTask> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsTask>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsTask.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsTask> mapFromJson(dynamic json) {
    final map = <String, ModelsTask>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsTask.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsTask-objects as value to a dart map
  static Map<String, List<ModelsTask>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsTask>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsTask.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

