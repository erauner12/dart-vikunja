# vikunja_flutter_api.model.ModelsBucket

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **int** | The number of tasks currently in this bucket | [optional] 
**created** | **String** | A timestamp when this bucket was created. You cannot change this value. | [optional] 
**createdBy** | [**UserUser**](UserUser.md) | The user who initially created the bucket. | [optional] 
**id** | **int** | The unique, numeric id of this bucket. | [optional] 
**limit** | **int** | How many tasks can be at the same time on this board max | [optional] 
**position** | **num** | The position this bucket has when querying all buckets. See the tasks.position property on how to use this. | [optional] 
**projectViewId** | **int** | The project view this bucket belongs to. | [optional] 
**tasks** | [**List<ModelsTask>**](ModelsTask.md) | All tasks which belong to this bucket. | [optional] [default to const []]
**title** | **String** | The title of this bucket. | [optional] 
**updated** | **String** | A timestamp when this bucket was last updated. You cannot change this value. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


