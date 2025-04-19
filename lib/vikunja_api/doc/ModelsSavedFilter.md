# vikunja_flutter_api.model.ModelsSavedFilter

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | A timestamp when this filter was created. You cannot change this value. | [optional] 
**description** | **String** | The description of the filter | [optional] 
**filters** | [**ModelsTaskCollection**](ModelsTaskCollection.md) | The actual filters this filter contains | [optional] 
**id** | **int** | The unique numeric id of this saved filter | [optional] 
**isFavorite** | **bool** | True if the filter is a favorite. Favorite filters show up in a separate parent project together with favorite projects. | [optional] 
**owner** | [**UserUser**](UserUser.md) | The user who owns this filter | [optional] 
**title** | **String** | The title of the filter. | [optional] 
**updated** | **String** | A timestamp when this filter was last updated. You cannot change this value. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


