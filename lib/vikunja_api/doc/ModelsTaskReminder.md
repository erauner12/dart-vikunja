# vikunja_flutter_api.model.ModelsTaskReminder

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relativePeriod** | **int** | A period in seconds relative to another date argument. Negative values mean the reminder triggers before the date. Default: 0, tiggers when RelativeTo is due. | [optional] 
**relativeTo** | [**ModelsReminderRelation**](ModelsReminderRelation.md) | The name of the date field to which the relative period refers to. | [optional] 
**reminder** | **String** | The absolute time when the user wants to be reminded of the task. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


