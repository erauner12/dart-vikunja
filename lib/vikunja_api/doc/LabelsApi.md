# vikunja_flutter_api.api.LabelsApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**labelsGet**](LabelsApi.md#labelsget) | **GET** /labels | Get all labels a user has access to
[**labelsIdDelete**](LabelsApi.md#labelsiddelete) | **DELETE** /labels/{id} | Delete a label
[**labelsIdGet**](LabelsApi.md#labelsidget) | **GET** /labels/{id} | Gets one label
[**labelsIdPut**](LabelsApi.md#labelsidput) | **PUT** /labels/{id} | Update a label
[**labelsPut**](LabelsApi.md#labelsput) | **PUT** /labels | Create a label
[**tasksTaskIDLabelsBulkPost**](LabelsApi.md#taskstaskidlabelsbulkpost) | **POST** /tasks/{taskID}/labels/bulk | Update all labels on a task.
[**tasksTaskLabelsGet**](LabelsApi.md#taskstasklabelsget) | **GET** /tasks/{task}/labels | Get all labels on a task
[**tasksTaskLabelsLabelDelete**](LabelsApi.md#taskstasklabelslabeldelete) | **DELETE** /tasks/{task}/labels/{label} | Remove a label from a task
[**tasksTaskLabelsPut**](LabelsApi.md#taskstasklabelsput) | **PUT** /tasks/{task}/labels | Add a label to a task


# **labelsGet**
> List<ModelsLabel> labelsGet(page, perPage, s)

Get all labels a user has access to

Returns all labels which are either created by the user or associated with a task the user has at least read-access to.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = LabelsApi();
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search labels by label text.

try {
    final result = api_instance.labelsGet(page, perPage, s);
    print(result);
} catch (e) {
    print('Exception when calling LabelsApi->labelsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search labels by label text. | [optional] 

### Return type

[**List<ModelsLabel>**](ModelsLabel.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **labelsIdDelete**
> ModelsLabel labelsIdDelete(id)

Delete a label

Delete an existing label. The user needs to be the creator of the label to be able to do this.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = LabelsApi();
final id = 56; // int | Label ID

try {
    final result = api_instance.labelsIdDelete(id);
    print(result);
} catch (e) {
    print('Exception when calling LabelsApi->labelsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Label ID | 

### Return type

[**ModelsLabel**](ModelsLabel.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **labelsIdGet**
> ModelsLabel labelsIdGet(id)

Gets one label

Returns one label by its ID.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = LabelsApi();
final id = 56; // int | Label ID

try {
    final result = api_instance.labelsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling LabelsApi->labelsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Label ID | 

### Return type

[**ModelsLabel**](ModelsLabel.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **labelsIdPut**
> ModelsLabel labelsIdPut(id, label)

Update a label

Update an existing label. The user needs to be the creator of the label to be able to do this.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = LabelsApi();
final id = 56; // int | Label ID
final label = ModelsLabel(); // ModelsLabel | The label object

try {
    final result = api_instance.labelsIdPut(id, label);
    print(result);
} catch (e) {
    print('Exception when calling LabelsApi->labelsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Label ID | 
 **label** | [**ModelsLabel**](ModelsLabel.md)| The label object | 

### Return type

[**ModelsLabel**](ModelsLabel.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **labelsPut**
> ModelsLabel labelsPut(label)

Create a label

Creates a new label.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = LabelsApi();
final label = ModelsLabel(); // ModelsLabel | The label object

try {
    final result = api_instance.labelsPut(label);
    print(result);
} catch (e) {
    print('Exception when calling LabelsApi->labelsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label** | [**ModelsLabel**](ModelsLabel.md)| The label object | 

### Return type

[**ModelsLabel**](ModelsLabel.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDLabelsBulkPost**
> ModelsLabelTaskBulk tasksTaskIDLabelsBulkPost(taskID, label)

Update all labels on a task.

Updates all labels on a task. Every label which is not passed but exists on the task will be deleted. Every label which does not exist on the task will be added. All labels which are passed and already exist on the task won't be touched.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = LabelsApi();
final taskID = 56; // int | Task ID
final label = ModelsLabelTaskBulk(); // ModelsLabelTaskBulk | The array of labels

try {
    final result = api_instance.tasksTaskIDLabelsBulkPost(taskID, label);
    print(result);
} catch (e) {
    print('Exception when calling LabelsApi->tasksTaskIDLabelsBulkPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **label** | [**ModelsLabelTaskBulk**](ModelsLabelTaskBulk.md)| The array of labels | 

### Return type

[**ModelsLabelTaskBulk**](ModelsLabelTaskBulk.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskLabelsGet**
> List<ModelsLabel> tasksTaskLabelsGet(task, page, perPage, s)

Get all labels on a task

Returns all labels which are assicociated with a given task.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = LabelsApi();
final task = 56; // int | Task ID
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search labels by label text.

try {
    final result = api_instance.tasksTaskLabelsGet(task, page, perPage, s);
    print(result);
} catch (e) {
    print('Exception when calling LabelsApi->tasksTaskLabelsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task** | **int**| Task ID | 
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search labels by label text. | [optional] 

### Return type

[**List<ModelsLabel>**](ModelsLabel.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskLabelsLabelDelete**
> ModelsMessage tasksTaskLabelsLabelDelete(task, label)

Remove a label from a task

Remove a label from a task. The user needs to have write-access to the project to be able do this.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = LabelsApi();
final task = 56; // int | Task ID
final label = 56; // int | Label ID

try {
    final result = api_instance.tasksTaskLabelsLabelDelete(task, label);
    print(result);
} catch (e) {
    print('Exception when calling LabelsApi->tasksTaskLabelsLabelDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task** | **int**| Task ID | 
 **label** | **int**| Label ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskLabelsPut**
> ModelsLabelTask tasksTaskLabelsPut(task, label)

Add a label to a task

Add a label to a task. The user needs to have write-access to the project to be able do this.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = LabelsApi();
final task = 56; // int | Task ID
final label = ModelsLabelTask(); // ModelsLabelTask | The label object

try {
    final result = api_instance.tasksTaskLabelsPut(task, label);
    print(result);
} catch (e) {
    print('Exception when calling LabelsApi->tasksTaskLabelsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task** | **int**| Task ID | 
 **label** | [**ModelsLabelTask**](ModelsLabelTask.md)| The label object | 

### Return type

[**ModelsLabelTask**](ModelsLabelTask.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

