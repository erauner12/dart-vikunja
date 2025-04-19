# vikunja_flutter_api.model.ModelsTaskPosition

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**position** | **num** | The position of the task - any task project can be sorted as usual by this parameter. When accessing tasks via kanban buckets, this is primarily used to sort them based on a range We're using a float64 here to make it possible to put any task within any two other tasks (by changing the number). You would calculate the new position between two tasks with something like task3.position = (task2.position - task1.position) / 2. A 64-Bit float leaves plenty of room to initially give tasks a position with 2^16 difference to the previous task which also leaves a lot of room for rearranging and sorting later. Positions are always saved per view. They will automatically be set if you request the tasks through a view endpoint, otherwise they will always be 0. To update them, take a look at the Task Position endpoint. | [optional] 
**projectViewId** | **int** | The project view this task is related to | [optional] 
**taskId** | **int** | The ID of the task this position is for | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


