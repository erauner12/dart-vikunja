# vikunja_flutter_api.model.ModelsTask

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assignees** | [**List<UserUser>**](UserUser.md) | An array of users who are assigned to this task | [optional] [default to const []]
**attachments** | [**List<ModelsTaskAttachment>**](ModelsTaskAttachment.md) | All attachments this task has. This property is read-onlym, you must use the separate endpoint to add attachments to a task. | [optional] [default to const []]
**bucketId** | **int** | The bucket id. Will only be populated when the task is accessed via a view with buckets. Can be used to move a task between buckets. In that case, the new bucket must be in the same view as the old one. | [optional] 
**coverImageAttachmentId** | **int** | If this task has a cover image, the field will return the id of the attachment that is the cover image. | [optional] 
**created** | **String** | A timestamp when this task was created. You cannot change this value. | [optional] 
**createdBy** | [**UserUser**](UserUser.md) | The user who initially created the task. | [optional] 
**description** | **String** | The task description. | [optional] 
**done** | **bool** | Whether a task is done or not. | [optional] 
**doneAt** | **String** | The time when a task was marked as done. | [optional] 
**dueDate** | **String** | The time when the task is due. | [optional] 
**endDate** | **String** | When this task ends. | [optional] 
**hexColor** | **String** | The task color in hex | [optional] 
**id** | **int** | The unique, numeric id of this task. | [optional] 
**identifier** | **String** | The task identifier, based on the project identifier and the task's index | [optional] 
**index** | **int** | The task index, calculated per project | [optional] 
**isFavorite** | **bool** | True if a task is a favorite task. Favorite tasks show up in a separate \"Important\" project. This value depends on the user making the call to the api. | [optional] 
**labels** | [**List<ModelsLabel>**](ModelsLabel.md) | An array of labels which are associated with this task. This property is read-only, you must use the separate endpoint to add labels to a task. | [optional] [default to const []]
**percentDone** | **num** | Determines how far a task is left from being done | [optional] 
**position** | **num** | The position of the task - any task project can be sorted as usual by this parameter. When accessing tasks via views with buckets, this is primarily used to sort them based on a range. Positions are always saved per view. They will automatically be set if you request the tasks through a view endpoint, otherwise they will always be 0. To update them, take a look at the Task Position endpoint. | [optional] 
**priority** | **int** | The task priority. Can be anything you want, it is possible to sort by this later. | [optional] 
**projectId** | **int** | The project this task belongs to. | [optional] 
**reactions** | [**Map<String, List<UserUser>>**](List.md) | Reactions on that task. | [optional] 
**relatedTasks** | [**Map<String, List<ModelsTask>>**](List.md) | All related tasks, grouped by their relation kind | [optional] 
**reminders** | [**List<ModelsTaskReminder>**](ModelsTaskReminder.md) | An array of reminders that are associated with this task. | [optional] [default to const []]
**repeatAfter** | **int** | An amount in seconds this task repeats itself. If this is set, when marking the task as done, it will mark itself as \"undone\" and then increase all remindes and the due date by its amount. | [optional] 
**repeatMode** | [**ModelsTaskRepeatMode**](ModelsTaskRepeatMode.md) | Can have three possible values which will trigger when the task is marked as done: 0 = repeats after the amount specified in repeat_after, 1 = repeats all dates each months (ignoring repeat_after), 3 = repeats from the current date rather than the last set date. | [optional] 
**startDate** | **String** | When this task starts. | [optional] 
**subscription** | [**ModelsSubscription**](ModelsSubscription.md) | The subscription status for the user reading this task. You can only read this property, use the subscription endpoints to modify it. Will only returned when retrieving one task. | [optional] 
**title** | **String** | The task text. This is what you'll see in the project. | [optional] 
**updated** | **String** | A timestamp when this task was last updated. You cannot change this value. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


