# vikunja_flutter_api.model.ModelsProjectView

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucketConfiguration** | [**List<ModelsProjectViewBucketConfiguration>**](ModelsProjectViewBucketConfiguration.md) | When the bucket configuration mode is not `manual`, this field holds the options of that configuration. | [optional] [default to const []]
**bucketConfigurationMode** | [**ModelsBucketConfigurationModeKind**](ModelsBucketConfigurationModeKind.md) | The bucket configuration mode. Can be `none`, `manual` or `filter`. `manual` allows to move tasks between buckets as you normally would. `filter` creates buckets based on a filter for each bucket. | [optional] 
**created** | **String** | A timestamp when this reaction was created. You cannot change this value. | [optional] 
**defaultBucketId** | **int** | The ID of the bucket where new tasks without a bucket are added to. By default, this is the leftmost bucket in a view. | [optional] 
**doneBucketId** | **int** | If tasks are moved to the done bucket, they are marked as done. If they are marked as done individually, they are moved into the done bucket. | [optional] 
**filter** | **String** | The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation. | [optional] 
**id** | **int** | The unique numeric id of this view | [optional] 
**position** | **num** | The position of this view in the list. The list of all views will be sorted by this parameter. | [optional] 
**projectId** | **int** | The project this view belongs to | [optional] 
**title** | **String** | The title of this view | [optional] 
**updated** | **String** | A timestamp when this view was updated. You cannot change this value. | [optional] 
**viewKind** | [**ModelsProjectViewKind**](ModelsProjectViewKind.md) | The kind of this view. Can be `list`, `gantt`, `table` or `kanban`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


