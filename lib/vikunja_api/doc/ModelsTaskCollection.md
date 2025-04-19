# vikunja_flutter_api.model.ModelsTaskCollection

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filter** | **String** | The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation. | [optional] 
**filterIncludeNulls** | **bool** | If set to true, the result will also include null values | [optional] 
**orderBy** | **List<String>** | The query parameter to order the items by. This can be either asc or desc, with asc being the default. | [optional] [default to const []]
**sortBy** | **List<String>** | The query parameter to sort by. This is for ex. done, priority, etc. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


