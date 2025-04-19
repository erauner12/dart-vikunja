# vikunja_flutter_api.model.ModelsTaskRelation

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | A timestamp when this label was created. You cannot change this value. | [optional] 
**createdBy** | [**UserUser**](UserUser.md) | The user who created this relation | [optional] 
**otherTaskId** | **int** | The ID of the other task, the task which is being related. | [optional] 
**relationKind** | [**ModelsRelationKind**](ModelsRelationKind.md) | The kind of the relation. | [optional] 
**taskId** | **int** | The ID of the \"base\" task, the task which has a relation to another. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


