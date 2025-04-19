# vikunja_flutter_api.model.V1UserSettings

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**defaultProjectId** | **int** | If a task is created without a specified project this value should be used. Applies to tasks made directly in API and from clients. | [optional] 
**discoverableByEmail** | **bool** | If true, the user can be found when searching for their exact email. | [optional] 
**discoverableByName** | **bool** | If true, this user can be found by their name or parts of it when searching for it. | [optional] 
**emailRemindersEnabled** | **bool** | If enabled, sends email reminders of tasks to the user. | [optional] 
**frontendSettings** | [**Object**](.md) | Additional settings only used by the frontend | [optional] 
**language** | **String** | The user's language | [optional] 
**name** | **String** | The new name of the current user. | [optional] 
**overdueTasksRemindersEnabled** | **bool** | If enabled, the user will get an email for their overdue tasks each morning. | [optional] 
**overdueTasksRemindersTime** | **String** | The time when the daily summary of overdue tasks will be sent via email. | [optional] 
**timezone** | **String** | The user's time zone. Used to send task reminders in the time zone of the user. | [optional] 
**weekStart** | **int** | The day when the week starts for this user. 0 = sunday, 1 = monday, etc. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


