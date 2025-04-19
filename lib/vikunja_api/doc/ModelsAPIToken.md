# vikunja_flutter_api.model.ModelsAPIToken

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | A timestamp when this api key was created. You cannot change this value. | [optional] 
**expiresAt** | **String** | The date when this key expires. | [optional] 
**id** | **int** | The unique, numeric id of this api key. | [optional] 
**permissions** | [**Map<String, List<String>>**](List.md) | The permissions this token has. Possible values are available via the /routes endpoint and consist of the keys of the list from that endpoint. For example, if the token should be able to read all tasks as well as update existing tasks, you should add `{\"tasks\":[\"read_all\",\"update\"]}`. | [optional] 
**title** | **String** | A human-readable name for this token | [optional] 
**token** | **String** | The actual api key. Only visible after creation. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


