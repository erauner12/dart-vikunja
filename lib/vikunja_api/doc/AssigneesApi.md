# vikunja_flutter_api.api.AssigneesApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tasksTaskIDAssigneesBulkPost**](AssigneesApi.md#taskstaskidassigneesbulkpost) | **POST** /tasks/{taskID}/assignees/bulk | Add multiple new assignees to a task
[**tasksTaskIDAssigneesGet**](AssigneesApi.md#taskstaskidassigneesget) | **GET** /tasks/{taskID}/assignees | Get all assignees for a task
[**tasksTaskIDAssigneesPut**](AssigneesApi.md#taskstaskidassigneesput) | **PUT** /tasks/{taskID}/assignees | Add a new assignee to a task
[**tasksTaskIDAssigneesUserIDDelete**](AssigneesApi.md#taskstaskidassigneesuseriddelete) | **DELETE** /tasks/{taskID}/assignees/{userID} | Delete an assignee


# **tasksTaskIDAssigneesBulkPost**
> ModelsTaskAssginee tasksTaskIDAssigneesBulkPost(taskID, assignee)

Add multiple new assignees to a task

Adds multiple new assignees to a task. The assignee needs to have access to the project, the doer must be able to edit this task. Every user not in the project will be unassigned from the task, pass an empty array to unassign everyone.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AssigneesApi();
final taskID = 56; // int | Task ID
final assignee = ModelsBulkAssignees(); // ModelsBulkAssignees | The array of assignees

try {
    final result = api_instance.tasksTaskIDAssigneesBulkPost(taskID, assignee);
    print(result);
} catch (e) {
    print('Exception when calling AssigneesApi->tasksTaskIDAssigneesBulkPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **assignee** | [**ModelsBulkAssignees**](ModelsBulkAssignees.md)| The array of assignees | 

### Return type

[**ModelsTaskAssginee**](ModelsTaskAssginee.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDAssigneesGet**
> List<UserUser> tasksTaskIDAssigneesGet(taskID, page, perPage, s)

Get all assignees for a task

Returns an array with all assignees for this task.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AssigneesApi();
final taskID = 56; // int | Task ID
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search assignees by their username.

try {
    final result = api_instance.tasksTaskIDAssigneesGet(taskID, page, perPage, s);
    print(result);
} catch (e) {
    print('Exception when calling AssigneesApi->tasksTaskIDAssigneesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search assignees by their username. | [optional] 

### Return type

[**List<UserUser>**](UserUser.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDAssigneesPut**
> ModelsTaskAssginee tasksTaskIDAssigneesPut(taskID, assignee)

Add a new assignee to a task

Adds a new assignee to a task. The assignee needs to have access to the project, the doer must be able to edit this task.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AssigneesApi();
final taskID = 56; // int | Task ID
final assignee = ModelsTaskAssginee(); // ModelsTaskAssginee | The assingee object

try {
    final result = api_instance.tasksTaskIDAssigneesPut(taskID, assignee);
    print(result);
} catch (e) {
    print('Exception when calling AssigneesApi->tasksTaskIDAssigneesPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **assignee** | [**ModelsTaskAssginee**](ModelsTaskAssginee.md)| The assingee object | 

### Return type

[**ModelsTaskAssginee**](ModelsTaskAssginee.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDAssigneesUserIDDelete**
> ModelsMessage tasksTaskIDAssigneesUserIDDelete(taskID, userID)

Delete an assignee

Un-assign a user from a task.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AssigneesApi();
final taskID = 56; // int | Task ID
final userID = 56; // int | Assignee user ID

try {
    final result = api_instance.tasksTaskIDAssigneesUserIDDelete(taskID, userID);
    print(result);
} catch (e) {
    print('Exception when calling AssigneesApi->tasksTaskIDAssigneesUserIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **userID** | **int**| Assignee user ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

