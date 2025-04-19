# vikunja_flutter_api.api.TaskApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**kindIdReactionsDeletePost**](TaskApi.md#kindidreactionsdeletepost) | **POST** /{kind}/{id}/reactions/delete | Removes the user's reaction
[**kindIdReactionsGet**](TaskApi.md#kindidreactionsget) | **GET** /{kind}/{id}/reactions | Get all reactions for an entity
[**kindIdReactionsPut**](TaskApi.md#kindidreactionsput) | **PUT** /{kind}/{id}/reactions | Add a reaction to an entity
[**projectsIdTasksPut**](TaskApi.md#projectsidtasksput) | **PUT** /projects/{id}/tasks | Create a task
[**projectsIdViewsViewTasksGet**](TaskApi.md#projectsidviewsviewtasksget) | **GET** /projects/{id}/views/{view}/tasks | Get tasks in a project
[**projectsProjectViewsViewBucketsBucketTasksPost**](TaskApi.md#projectsprojectviewsviewbucketsbuckettaskspost) | **POST** /projects/{project}/views/{view}/buckets/{bucket}/tasks | Update a task bucket
[**tasksAllGet**](TaskApi.md#tasksallget) | **GET** /tasks/all | Get tasks
[**tasksBulkPost**](TaskApi.md#tasksbulkpost) | **POST** /tasks/bulk | Update a bunch of tasks at once
[**tasksIdAttachmentsAttachmentIDDelete**](TaskApi.md#tasksidattachmentsattachmentiddelete) | **DELETE** /tasks/{id}/attachments/{attachmentID} | Delete an attachment
[**tasksIdAttachmentsAttachmentIDGet**](TaskApi.md#tasksidattachmentsattachmentidget) | **GET** /tasks/{id}/attachments/{attachmentID} | Get one attachment.
[**tasksIdAttachmentsGet**](TaskApi.md#tasksidattachmentsget) | **GET** /tasks/{id}/attachments | Get  all attachments for one task.
[**tasksIdAttachmentsPut**](TaskApi.md#tasksidattachmentsput) | **PUT** /tasks/{id}/attachments | Upload a task attachment
[**tasksIdDelete**](TaskApi.md#tasksiddelete) | **DELETE** /tasks/{id} | Delete a task
[**tasksIdGet**](TaskApi.md#tasksidget) | **GET** /tasks/{id} | Get one task
[**tasksIdPositionPost**](TaskApi.md#tasksidpositionpost) | **POST** /tasks/{id}/position | Updates a task position
[**tasksIdPost**](TaskApi.md#tasksidpost) | **POST** /tasks/{id} | Update a task
[**tasksTaskIDCommentsCommentIDDelete**](TaskApi.md#taskstaskidcommentscommentiddelete) | **DELETE** /tasks/{taskID}/comments/{commentID} | Remove a task comment
[**tasksTaskIDCommentsCommentIDGet**](TaskApi.md#taskstaskidcommentscommentidget) | **GET** /tasks/{taskID}/comments/{commentID} | Remove a task comment
[**tasksTaskIDCommentsCommentIDPost**](TaskApi.md#taskstaskidcommentscommentidpost) | **POST** /tasks/{taskID}/comments/{commentID} | Update an existing task comment
[**tasksTaskIDCommentsGet**](TaskApi.md#taskstaskidcommentsget) | **GET** /tasks/{taskID}/comments | Get all task comments
[**tasksTaskIDCommentsPut**](TaskApi.md#taskstaskidcommentsput) | **PUT** /tasks/{taskID}/comments | Create a new task comment
[**tasksTaskIDRelationsPut**](TaskApi.md#taskstaskidrelationsput) | **PUT** /tasks/{taskID}/relations | Create a new relation between two tasks
[**tasksTaskIDRelationsRelationKindOtherTaskIDDelete**](TaskApi.md#taskstaskidrelationsrelationkindothertaskiddelete) | **DELETE** /tasks/{taskID}/relations/{relationKind}/{otherTaskID} | Remove a task relation


# **kindIdReactionsDeletePost**
> ModelsMessage kindIdReactionsDeletePost(id, kind, project)

Removes the user's reaction

Removes the reaction of that user on that entity.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | Entity ID
final kind = 56; // int | The kind of the entity. Can be either `tasks` or `comments` for task comments
final project = ModelsReaction(); // ModelsReaction | The reaction you want to add to the entity.

try {
    final result = api_instance.kindIdReactionsDeletePost(id, kind, project);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->kindIdReactionsDeletePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Entity ID | 
 **kind** | **int**| The kind of the entity. Can be either `tasks` or `comments` for task comments | 
 **project** | [**ModelsReaction**](ModelsReaction.md)| The reaction you want to add to the entity. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kindIdReactionsGet**
> List<Map<String, List<UserUser>>> kindIdReactionsGet(id, kind)

Get all reactions for an entity

Returns all reactions for an entity

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | Entity ID
final kind = 56; // int | The kind of the entity. Can be either `tasks` or `comments` for task comments

try {
    final result = api_instance.kindIdReactionsGet(id, kind);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->kindIdReactionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Entity ID | 
 **kind** | **int**| The kind of the entity. Can be either `tasks` or `comments` for task comments | 

### Return type

[**List<Map<String, List<UserUser>>>**](Map.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **kindIdReactionsPut**
> ModelsReaction kindIdReactionsPut(id, kind, project)

Add a reaction to an entity

Add a reaction to an entity. Will do nothing if the reaction already exists.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | Entity ID
final kind = 56; // int | The kind of the entity. Can be either `tasks` or `comments` for task comments
final project = ModelsReaction(); // ModelsReaction | The reaction you want to add to the entity.

try {
    final result = api_instance.kindIdReactionsPut(id, kind, project);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->kindIdReactionsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Entity ID | 
 **kind** | **int**| The kind of the entity. Can be either `tasks` or `comments` for task comments | 
 **project** | [**ModelsReaction**](ModelsReaction.md)| The reaction you want to add to the entity. | 

### Return type

[**ModelsReaction**](ModelsReaction.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdTasksPut**
> ModelsTask projectsIdTasksPut(id, task)

Create a task

Inserts a task into a project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | Project ID
final task = ModelsTask(); // ModelsTask | The task object

try {
    final result = api_instance.projectsIdTasksPut(id, task);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->projectsIdTasksPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **task** | [**ModelsTask**](ModelsTask.md)| The task object | 

### Return type

[**ModelsTask**](ModelsTask.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdViewsViewTasksGet**
> List<ModelsTask> projectsIdViewsViewTasksGet(id, view, page, perPage, s, sortBy, orderBy, filter, filterTimezone, filterIncludeNulls, expand)

Get tasks in a project

Returns all tasks for the current project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | The project ID.
final view = 56; // int | The project view ID.
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search tasks by task text.
final sortBy = sortBy_example; // String | The sorting parameter. You can pass this multiple times to get the tasks ordered by multiple different parametes, along with `order_by`. Possible values to sort by are `id`, `title`, `description`, `done`, `done_at`, `due_date`, `created_by_id`, `project_id`, `repeat_after`, `priority`, `start_date`, `end_date`, `hex_color`, `percent_done`, `uid`, `created`, `updated`. Default is `id`.
final orderBy = orderBy_example; // String | The ordering parameter. Possible values to order by are `asc` or `desc`. Default is `asc`.
final filter = filter_example; // String | The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation of the feature.
final filterTimezone = filterTimezone_example; // String | The time zone which should be used for date match (statements like 
final filterIncludeNulls = filterIncludeNulls_example; // String | If set to true the result will include filtered fields whose value is set to `null`. Available values are `true` or `false`. Defaults to `false`.
final expand = expand_example; // String | If set to `subtasks`, Vikunja will fetch only tasks which do not have subtasks and then in a second step, will fetch all of these subtasks. This may result in more tasks than the pagination limit being returned, but all subtasks will be present in the response. You can only set this to `subtasks`.

try {
    final result = api_instance.projectsIdViewsViewTasksGet(id, view, page, perPage, s, sortBy, orderBy, filter, filterTimezone, filterIncludeNulls, expand);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->projectsIdViewsViewTasksGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The project ID. | 
 **view** | **int**| The project view ID. | 
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search tasks by task text. | [optional] 
 **sortBy** | **String**| The sorting parameter. You can pass this multiple times to get the tasks ordered by multiple different parametes, along with `order_by`. Possible values to sort by are `id`, `title`, `description`, `done`, `done_at`, `due_date`, `created_by_id`, `project_id`, `repeat_after`, `priority`, `start_date`, `end_date`, `hex_color`, `percent_done`, `uid`, `created`, `updated`. Default is `id`. | [optional] 
 **orderBy** | **String**| The ordering parameter. Possible values to order by are `asc` or `desc`. Default is `asc`. | [optional] 
 **filter** | **String**| The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation of the feature. | [optional] 
 **filterTimezone** | **String**| The time zone which should be used for date match (statements like  | [optional] 
 **filterIncludeNulls** | **String**| If set to true the result will include filtered fields whose value is set to `null`. Available values are `true` or `false`. Defaults to `false`. | [optional] 
 **expand** | **String**| If set to `subtasks`, Vikunja will fetch only tasks which do not have subtasks and then in a second step, will fetch all of these subtasks. This may result in more tasks than the pagination limit being returned, but all subtasks will be present in the response. You can only set this to `subtasks`. | [optional] 

### Return type

[**List<ModelsTask>**](ModelsTask.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectViewsViewBucketsBucketTasksPost**
> ModelsTaskBucket projectsProjectViewsViewBucketsBucketTasksPost(project, view, bucket, taskBucket)

Update a task bucket

Updates a task in a bucket

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final project = 56; // int | Project ID
final view = 56; // int | Project View ID
final bucket = 56; // int | Bucket ID
final taskBucket = ModelsTaskBucket(); // ModelsTaskBucket | The id of the task you want to move into the bucket.

try {
    final result = api_instance.projectsProjectViewsViewBucketsBucketTasksPost(project, view, bucket, taskBucket);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->projectsProjectViewsViewBucketsBucketTasksPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **int**| Project ID | 
 **view** | **int**| Project View ID | 
 **bucket** | **int**| Bucket ID | 
 **taskBucket** | [**ModelsTaskBucket**](ModelsTaskBucket.md)| The id of the task you want to move into the bucket. | 

### Return type

[**ModelsTaskBucket**](ModelsTaskBucket.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksAllGet**
> List<ModelsTask> tasksAllGet(page, perPage, s, sortBy, orderBy, filter, filterTimezone, filterIncludeNulls, expand)

Get tasks

Returns all tasks on any project the user has access to.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search tasks by task text.
final sortBy = sortBy_example; // String | The sorting parameter. You can pass this multiple times to get the tasks ordered by multiple different parametes, along with `order_by`. Possible values to sort by are `id`, `title`, `description`, `done`, `done_at`, `due_date`, `created_by_id`, `project_id`, `repeat_after`, `priority`, `start_date`, `end_date`, `hex_color`, `percent_done`, `uid`, `created`, `updated`. Default is `id`.
final orderBy = orderBy_example; // String | The ordering parameter. Possible values to order by are `asc` or `desc`. Default is `asc`.
final filter = filter_example; // String | The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation of the feature.
final filterTimezone = filterTimezone_example; // String | The time zone which should be used for date match (statements like 
final filterIncludeNulls = filterIncludeNulls_example; // String | If set to true the result will include filtered fields whose value is set to `null`. Available values are `true` or `false`. Defaults to `false`.
final expand = expand_example; // String | If set to `subtasks`, Vikunja will fetch only tasks which do not have subtasks and then in a second step, will fetch all of these subtasks. This may result in more tasks than the pagination limit being returned, but all subtasks will be present in the response. You can only set this to `subtasks`.

try {
    final result = api_instance.tasksAllGet(page, perPage, s, sortBy, orderBy, filter, filterTimezone, filterIncludeNulls, expand);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksAllGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search tasks by task text. | [optional] 
 **sortBy** | **String**| The sorting parameter. You can pass this multiple times to get the tasks ordered by multiple different parametes, along with `order_by`. Possible values to sort by are `id`, `title`, `description`, `done`, `done_at`, `due_date`, `created_by_id`, `project_id`, `repeat_after`, `priority`, `start_date`, `end_date`, `hex_color`, `percent_done`, `uid`, `created`, `updated`. Default is `id`. | [optional] 
 **orderBy** | **String**| The ordering parameter. Possible values to order by are `asc` or `desc`. Default is `asc`. | [optional] 
 **filter** | **String**| The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation of the feature. | [optional] 
 **filterTimezone** | **String**| The time zone which should be used for date match (statements like  | [optional] 
 **filterIncludeNulls** | **String**| If set to true the result will include filtered fields whose value is set to `null`. Available values are `true` or `false`. Defaults to `false`. | [optional] 
 **expand** | **String**| If set to `subtasks`, Vikunja will fetch only tasks which do not have subtasks and then in a second step, will fetch all of these subtasks. This may result in more tasks than the pagination limit being returned, but all subtasks will be present in the response. You can only set this to `subtasks`. | [optional] 

### Return type

[**List<ModelsTask>**](ModelsTask.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksBulkPost**
> ModelsTask tasksBulkPost(task)

Update a bunch of tasks at once

Updates a bunch of tasks at once. This includes marking them as done. Note: although you could supply another ID, it will be ignored. Use task_ids instead.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final task = ModelsBulkTask(); // ModelsBulkTask | The task object. Looks like a normal task, the only difference is it uses an array of project_ids to update.

try {
    final result = api_instance.tasksBulkPost(task);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksBulkPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task** | [**ModelsBulkTask**](ModelsBulkTask.md)| The task object. Looks like a normal task, the only difference is it uses an array of project_ids to update. | 

### Return type

[**ModelsTask**](ModelsTask.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdAttachmentsAttachmentIDDelete**
> ModelsMessage tasksIdAttachmentsAttachmentIDDelete(id, attachmentID)

Delete an attachment

Delete an attachment.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | Task ID
final attachmentID = 56; // int | Attachment ID

try {
    final result = api_instance.tasksIdAttachmentsAttachmentIDDelete(id, attachmentID);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksIdAttachmentsAttachmentIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Task ID | 
 **attachmentID** | **int**| Attachment ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdAttachmentsAttachmentIDGet**
> MultipartFile tasksIdAttachmentsAttachmentIDGet(id, attachmentID, previewSize)

Get one attachment.

Get one attachment for download. **Returns json on error.**

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | Task ID
final attachmentID = 56; // int | Attachment ID
final previewSize = previewSize_example; // String | The size of the preview image. Can be sm = 100px, md = 200px, lg = 400px or xl = 800px. If provided, a preview image will be returned if the attachment is an image.

try {
    final result = api_instance.tasksIdAttachmentsAttachmentIDGet(id, attachmentID, previewSize);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksIdAttachmentsAttachmentIDGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Task ID | 
 **attachmentID** | **int**| Attachment ID | 
 **previewSize** | **String**| The size of the preview image. Can be sm = 100px, md = 200px, lg = 400px or xl = 800px. If provided, a preview image will be returned if the attachment is an image. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdAttachmentsGet**
> List<ModelsTaskAttachment> tasksIdAttachmentsGet(id, page, perPage)

Get  all attachments for one task.

Get all task attachments for one task.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | Task ID
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.

try {
    final result = api_instance.tasksIdAttachmentsGet(id, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksIdAttachmentsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Task ID | 
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 

### Return type

[**List<ModelsTaskAttachment>**](ModelsTaskAttachment.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdAttachmentsPut**
> ModelsMessage tasksIdAttachmentsPut(id, files)

Upload a task attachment

Upload a task attachment. You can pass multiple files with the files form param.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | Task ID
final files = files_example; // String | The file, as multipart form file. You can pass multiple.

try {
    final result = api_instance.tasksIdAttachmentsPut(id, files);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksIdAttachmentsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Task ID | 
 **files** | **String**| The file, as multipart form file. You can pass multiple. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdDelete**
> ModelsMessage tasksIdDelete(id)

Delete a task

Deletes a task from a project. This does not mean \"mark it done\".

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | Task ID

try {
    final result = api_instance.tasksIdDelete(id);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Task ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdGet**
> ModelsTask tasksIdGet(id)

Get one task

Returns one task by its ID

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | The task ID

try {
    final result = api_instance.tasksIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The task ID | 

### Return type

[**ModelsTask**](ModelsTask.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdPositionPost**
> ModelsTaskPosition tasksIdPositionPost(id, view)

Updates a task position

Updates a task position.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | Task ID
final view = ModelsTaskPosition(); // ModelsTaskPosition | The task position with updated values you want to change.

try {
    final result = api_instance.tasksIdPositionPost(id, view);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksIdPositionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Task ID | 
 **view** | [**ModelsTaskPosition**](ModelsTaskPosition.md)| The task position with updated values you want to change. | 

### Return type

[**ModelsTaskPosition**](ModelsTaskPosition.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksIdPost**
> ModelsTask tasksIdPost(id, task)

Update a task

Updates a task. This includes marking it as done. Assignees you pass will be updated, see their individual endpoints for more details on how this is done. To update labels, see the description of the endpoint.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final id = 56; // int | The Task ID
final task = ModelsTask(); // ModelsTask | The task object

try {
    final result = api_instance.tasksIdPost(id, task);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The Task ID | 
 **task** | [**ModelsTask**](ModelsTask.md)| The task object | 

### Return type

[**ModelsTask**](ModelsTask.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDCommentsCommentIDDelete**
> ModelsMessage tasksTaskIDCommentsCommentIDDelete(taskID, commentID)

Remove a task comment

Remove a task comment. The user doing this need to have at least write access to the task this comment belongs to.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final taskID = 56; // int | Task ID
final commentID = 56; // int | Comment ID

try {
    final result = api_instance.tasksTaskIDCommentsCommentIDDelete(taskID, commentID);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksTaskIDCommentsCommentIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **commentID** | **int**| Comment ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDCommentsCommentIDGet**
> ModelsTaskComment tasksTaskIDCommentsCommentIDGet(taskID, commentID)

Remove a task comment

Remove a task comment. The user doing this need to have at least read access to the task this comment belongs to.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final taskID = 56; // int | Task ID
final commentID = 56; // int | Comment ID

try {
    final result = api_instance.tasksTaskIDCommentsCommentIDGet(taskID, commentID);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksTaskIDCommentsCommentIDGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **commentID** | **int**| Comment ID | 

### Return type

[**ModelsTaskComment**](ModelsTaskComment.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDCommentsCommentIDPost**
> ModelsTaskComment tasksTaskIDCommentsCommentIDPost(taskID, commentID)

Update an existing task comment

Update an existing task comment. The user doing this need to have at least write access to the task this comment belongs to.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final taskID = 56; // int | Task ID
final commentID = 56; // int | Comment ID

try {
    final result = api_instance.tasksTaskIDCommentsCommentIDPost(taskID, commentID);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksTaskIDCommentsCommentIDPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **commentID** | **int**| Comment ID | 

### Return type

[**ModelsTaskComment**](ModelsTaskComment.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDCommentsGet**
> List<ModelsTaskComment> tasksTaskIDCommentsGet(taskID)

Get all task comments

Get all task comments. The user doing this need to have at least read access to the task.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final taskID = 56; // int | Task ID

try {
    final result = api_instance.tasksTaskIDCommentsGet(taskID);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksTaskIDCommentsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 

### Return type

[**List<ModelsTaskComment>**](ModelsTaskComment.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDCommentsPut**
> ModelsTaskComment tasksTaskIDCommentsPut(taskID, relation)

Create a new task comment

Create a new task comment. The user doing this need to have at least write access to the task this comment should belong to.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final taskID = 56; // int | Task ID
final relation = ModelsTaskComment(); // ModelsTaskComment | The task comment object

try {
    final result = api_instance.tasksTaskIDCommentsPut(taskID, relation);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksTaskIDCommentsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **relation** | [**ModelsTaskComment**](ModelsTaskComment.md)| The task comment object | 

### Return type

[**ModelsTaskComment**](ModelsTaskComment.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDRelationsPut**
> ModelsTaskRelation tasksTaskIDRelationsPut(taskID, relation)

Create a new relation between two tasks

Creates a new relation between two tasks. The user needs to have update rights on the base task and at least read rights on the other task. Both tasks do not need to be on the same project. Take a look at the docs for available task relation kinds.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final taskID = 56; // int | Task ID
final relation = ModelsTaskRelation(); // ModelsTaskRelation | The relation object

try {
    final result = api_instance.tasksTaskIDRelationsPut(taskID, relation);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksTaskIDRelationsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **relation** | [**ModelsTaskRelation**](ModelsTaskRelation.md)| The relation object | 

### Return type

[**ModelsTaskRelation**](ModelsTaskRelation.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIDRelationsRelationKindOtherTaskIDDelete**
> ModelsMessage tasksTaskIDRelationsRelationKindOtherTaskIDDelete(taskID, relationKind, otherTaskID, relation)

Remove a task relation

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TaskApi();
final taskID = 56; // int | Task ID
final relationKind = relationKind_example; // String | The kind of the relation. See the TaskRelation type for more info.
final otherTaskID = 56; // int | The id of the other task.
final relation = ModelsTaskRelation(); // ModelsTaskRelation | The relation object

try {
    final result = api_instance.tasksTaskIDRelationsRelationKindOtherTaskIDDelete(taskID, relationKind, otherTaskID, relation);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->tasksTaskIDRelationsRelationKindOtherTaskIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskID** | **int**| Task ID | 
 **relationKind** | **String**| The kind of the relation. See the TaskRelation type for more info. | 
 **otherTaskID** | **int**| The id of the other task. | 
 **relation** | [**ModelsTaskRelation**](ModelsTaskRelation.md)| The relation object | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

