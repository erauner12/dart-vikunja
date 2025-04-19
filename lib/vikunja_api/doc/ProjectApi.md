# vikunja_flutter_api.api.ProjectApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**backgroundsUnsplashImageImageGet**](ProjectApi.md#backgroundsunsplashimageimageget) | **GET** /backgrounds/unsplash/image/{image} | Get an unsplash image
[**backgroundsUnsplashImageImageThumbGet**](ProjectApi.md#backgroundsunsplashimageimagethumbget) | **GET** /backgrounds/unsplash/image/{image}/thumb | Get an unsplash thumbnail image
[**backgroundsUnsplashSearchGet**](ProjectApi.md#backgroundsunsplashsearchget) | **GET** /backgrounds/unsplash/search | Search for a background from unsplash
[**projectsGet**](ProjectApi.md#projectsget) | **GET** /projects | Get all projects a user has access to
[**projectsIdBackgroundDelete**](ProjectApi.md#projectsidbackgrounddelete) | **DELETE** /projects/{id}/background | Remove a project background
[**projectsIdBackgroundGet**](ProjectApi.md#projectsidbackgroundget) | **GET** /projects/{id}/background | Get the project background
[**projectsIdBackgroundsUnsplashPost**](ProjectApi.md#projectsidbackgroundsunsplashpost) | **POST** /projects/{id}/backgrounds/unsplash | Set an unsplash photo as project background
[**projectsIdBackgroundsUploadPut**](ProjectApi.md#projectsidbackgroundsuploadput) | **PUT** /projects/{id}/backgrounds/upload | Upload a project background
[**projectsIdDelete**](ProjectApi.md#projectsiddelete) | **DELETE** /projects/{id} | Deletes a project
[**projectsIdGet**](ProjectApi.md#projectsidget) | **GET** /projects/{id} | Gets one project
[**projectsIdPost**](ProjectApi.md#projectsidpost) | **POST** /projects/{id} | Updates a project
[**projectsIdProjectusersGet**](ProjectApi.md#projectsidprojectusersget) | **GET** /projects/{id}/projectusers | Get users
[**projectsIdViewsViewBucketsGet**](ProjectApi.md#projectsidviewsviewbucketsget) | **GET** /projects/{id}/views/{view}/buckets | Get all kanban buckets of a project
[**projectsIdViewsViewBucketsPut**](ProjectApi.md#projectsidviewsviewbucketsput) | **PUT** /projects/{id}/views/{view}/buckets | Create a new bucket
[**projectsProjectIDDuplicatePut**](ProjectApi.md#projectsprojectidduplicateput) | **PUT** /projects/{projectID}/duplicate | Duplicate an existing project
[**projectsProjectIDViewsViewBucketsBucketIDDelete**](ProjectApi.md#projectsprojectidviewsviewbucketsbucketiddelete) | **DELETE** /projects/{projectID}/views/{view}/buckets/{bucketID} | Deletes an existing bucket
[**projectsProjectIDViewsViewBucketsBucketIDPost**](ProjectApi.md#projectsprojectidviewsviewbucketsbucketidpost) | **POST** /projects/{projectID}/views/{view}/buckets/{bucketID} | Update an existing bucket
[**projectsProjectViewsGet**](ProjectApi.md#projectsprojectviewsget) | **GET** /projects/{project}/views | Get all project views for a project
[**projectsProjectViewsIdDelete**](ProjectApi.md#projectsprojectviewsiddelete) | **DELETE** /projects/{project}/views/{id} | Delete a project view
[**projectsProjectViewsIdGet**](ProjectApi.md#projectsprojectviewsidget) | **GET** /projects/{project}/views/{id} | Get one project view
[**projectsProjectViewsIdPost**](ProjectApi.md#projectsprojectviewsidpost) | **POST** /projects/{project}/views/{id} | Updates a project view
[**projectsProjectViewsPut**](ProjectApi.md#projectsprojectviewsput) | **PUT** /projects/{project}/views | Create a project view
[**projectsPut**](ProjectApi.md#projectsput) | **PUT** /projects | Creates a new project


# **backgroundsUnsplashImageImageGet**
> MultipartFile backgroundsUnsplashImageImageGet(image)

Get an unsplash image

Get an unsplash image. **Returns json on error.**

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final image = 56; // int | Unsplash Image ID

try {
    final result = api_instance.backgroundsUnsplashImageImageGet(image);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->backgroundsUnsplashImageImageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **int**| Unsplash Image ID | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **backgroundsUnsplashImageImageThumbGet**
> MultipartFile backgroundsUnsplashImageImageThumbGet(image)

Get an unsplash thumbnail image

Get an unsplash thumbnail image. The thumbnail is cropped to a max width of 200px. **Returns json on error.**

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final image = 56; // int | Unsplash Image ID

try {
    final result = api_instance.backgroundsUnsplashImageImageThumbGet(image);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->backgroundsUnsplashImageImageThumbGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **image** | **int**| Unsplash Image ID | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **backgroundsUnsplashSearchGet**
> List<BackgroundImage> backgroundsUnsplashSearchGet(s, p)

Search for a background from unsplash

Search for a project background from unsplash

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final s = s_example; // String | Search backgrounds from unsplash with this search term.
final p = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.

try {
    final result = api_instance.backgroundsUnsplashSearchGet(s, p);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->backgroundsUnsplashSearchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s** | **String**| Search backgrounds from unsplash with this search term. | [optional] 
 **p** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 

### Return type

[**List<BackgroundImage>**](BackgroundImage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsGet**
> List<ModelsProject> projectsGet(page, perPage, s, isArchived)

Get all projects a user has access to

Returns all projects a user has access to.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search projects by title.
final isArchived = true; // bool | If true, also returns all archived projects.

try {
    final result = api_instance.projectsGet(page, perPage, s, isArchived);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search projects by title. | [optional] 
 **isArchived** | **bool**| If true, also returns all archived projects. | [optional] 

### Return type

[**List<ModelsProject>**](ModelsProject.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdBackgroundDelete**
> ModelsProject projectsIdBackgroundDelete(id)

Remove a project background

Removes a previously set project background, regardless of the project provider used to set the background. It does not throw an error if the project does not have a background.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final id = 56; // int | Project ID

try {
    final result = api_instance.projectsIdBackgroundDelete(id);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsIdBackgroundDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 

### Return type

[**ModelsProject**](ModelsProject.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdBackgroundGet**
> MultipartFile projectsIdBackgroundGet(id)

Get the project background

Get the project background of a specific project. **Returns json on error.**

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final id = 56; // int | Project ID

try {
    final result = api_instance.projectsIdBackgroundGet(id);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsIdBackgroundGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdBackgroundsUnsplashPost**
> ModelsProject projectsIdBackgroundsUnsplashPost(id, project)

Set an unsplash photo as project background

Sets a photo from unsplash as project background.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final id = 56; // int | Project ID
final project = BackgroundImage(); // BackgroundImage | The image you want to set as background

try {
    final result = api_instance.projectsIdBackgroundsUnsplashPost(id, project);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsIdBackgroundsUnsplashPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **project** | [**BackgroundImage**](BackgroundImage.md)| The image you want to set as background | 

### Return type

[**ModelsProject**](ModelsProject.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdBackgroundsUploadPut**
> ModelsMessage projectsIdBackgroundsUploadPut(id, background)

Upload a project background

Upload a project background.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final id = 56; // int | Project ID
final background = background_example; // String | The file as single file.

try {
    final result = api_instance.projectsIdBackgroundsUploadPut(id, background);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsIdBackgroundsUploadPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **background** | **String**| The file as single file. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdDelete**
> ModelsMessage projectsIdDelete(id)

Deletes a project

Delets a project

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final id = 56; // int | Project ID

try {
    final result = api_instance.projectsIdDelete(id);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdGet**
> ModelsProject projectsIdGet(id)

Gets one project

Returns a project by its ID.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final id = 56; // int | Project ID

try {
    final result = api_instance.projectsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 

### Return type

[**ModelsProject**](ModelsProject.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdPost**
> ModelsProject projectsIdPost(id, project)

Updates a project

Updates a project. This does not include adding a task (see below).

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final id = 56; // int | Project ID
final project = ModelsProject(); // ModelsProject | The project with updated values you want to update.

try {
    final result = api_instance.projectsIdPost(id, project);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **project** | [**ModelsProject**](ModelsProject.md)| The project with updated values you want to update. | 

### Return type

[**ModelsProject**](ModelsProject.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdProjectusersGet**
> List<UserUser> projectsIdProjectusersGet(id, s)

Get users

Lists all users (without emailadresses). Also possible to search for a specific user.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final id = 56; // int | Project ID
final s = s_example; // String | Search for a user by its name.

try {
    final result = api_instance.projectsIdProjectusersGet(id, s);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsIdProjectusersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **s** | **String**| Search for a user by its name. | [optional] 

### Return type

[**List<UserUser>**](UserUser.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdViewsViewBucketsGet**
> List<ModelsBucket> projectsIdViewsViewBucketsGet(id, view)

Get all kanban buckets of a project

Returns all kanban buckets which belong to that project. Buckets are always sorted by their `position` in ascending order. To get all buckets with their tasks, use the tasks endpoint with a kanban view.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final id = 56; // int | Project ID
final view = 56; // int | Project view ID

try {
    final result = api_instance.projectsIdViewsViewBucketsGet(id, view);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsIdViewsViewBucketsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **view** | **int**| Project view ID | 

### Return type

[**List<ModelsBucket>**](ModelsBucket.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdViewsViewBucketsPut**
> ModelsBucket projectsIdViewsViewBucketsPut(id, view, bucket)

Create a new bucket

Creates a new kanban bucket on a project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final id = 56; // int | Project Id
final view = 56; // int | Project view ID
final bucket = ModelsBucket(); // ModelsBucket | The bucket object

try {
    final result = api_instance.projectsIdViewsViewBucketsPut(id, view, bucket);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsIdViewsViewBucketsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project Id | 
 **view** | **int**| Project view ID | 
 **bucket** | [**ModelsBucket**](ModelsBucket.md)| The bucket object | 

### Return type

[**ModelsBucket**](ModelsBucket.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectIDDuplicatePut**
> ModelsProjectDuplicate projectsProjectIDDuplicatePut(projectID, project)

Duplicate an existing project

Copies the project, tasks, files, kanban data, assignees, comments, attachments, lables, relations, backgrounds, user/team rights and link shares from one project to a new one. The user needs read access in the project and write access in the parent of the new project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final projectID = 56; // int | The project ID to duplicate
final project = ModelsProjectDuplicate(); // ModelsProjectDuplicate | The target parent project which should hold the copied project.

try {
    final result = api_instance.projectsProjectIDDuplicatePut(projectID, project);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsProjectIDDuplicatePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **int**| The project ID to duplicate | 
 **project** | [**ModelsProjectDuplicate**](ModelsProjectDuplicate.md)| The target parent project which should hold the copied project. | 

### Return type

[**ModelsProjectDuplicate**](ModelsProjectDuplicate.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectIDViewsViewBucketsBucketIDDelete**
> ModelsMessage projectsProjectIDViewsViewBucketsBucketIDDelete(projectID, bucketID, view)

Deletes an existing bucket

Deletes an existing kanban bucket and dissociates all of its task. It does not delete any tasks. You cannot delete the last bucket on a project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final projectID = 56; // int | Project Id
final bucketID = 56; // int | Bucket Id
final view = 56; // int | Project view ID

try {
    final result = api_instance.projectsProjectIDViewsViewBucketsBucketIDDelete(projectID, bucketID, view);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsProjectIDViewsViewBucketsBucketIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **int**| Project Id | 
 **bucketID** | **int**| Bucket Id | 
 **view** | **int**| Project view ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectIDViewsViewBucketsBucketIDPost**
> ModelsBucket projectsProjectIDViewsViewBucketsBucketIDPost(projectID, bucketID, view, bucket)

Update an existing bucket

Updates an existing kanban bucket.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final projectID = 56; // int | Project Id
final bucketID = 56; // int | Bucket Id
final view = 56; // int | Project view ID
final bucket = ModelsBucket(); // ModelsBucket | The bucket object

try {
    final result = api_instance.projectsProjectIDViewsViewBucketsBucketIDPost(projectID, bucketID, view, bucket);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsProjectIDViewsViewBucketsBucketIDPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **int**| Project Id | 
 **bucketID** | **int**| Bucket Id | 
 **view** | **int**| Project view ID | 
 **bucket** | [**ModelsBucket**](ModelsBucket.md)| The bucket object | 

### Return type

[**ModelsBucket**](ModelsBucket.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectViewsGet**
> List<ModelsProjectView> projectsProjectViewsGet(project)

Get all project views for a project

Returns all project views for a sepcific project

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final project = 56; // int | Project ID

try {
    final result = api_instance.projectsProjectViewsGet(project);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsProjectViewsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **int**| Project ID | 

### Return type

[**List<ModelsProjectView>**](ModelsProjectView.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectViewsIdDelete**
> ModelsMessage projectsProjectViewsIdDelete(project, id)

Delete a project view

Deletes a project view.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final project = 56; // int | Project ID
final id = 56; // int | Project View ID

try {
    final result = api_instance.projectsProjectViewsIdDelete(project, id);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsProjectViewsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **int**| Project ID | 
 **id** | **int**| Project View ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectViewsIdGet**
> ModelsProjectView projectsProjectViewsIdGet(project, id)

Get one project view

Returns a project view by its ID.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final project = 56; // int | Project ID
final id = 56; // int | Project View ID

try {
    final result = api_instance.projectsProjectViewsIdGet(project, id);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsProjectViewsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **int**| Project ID | 
 **id** | **int**| Project View ID | 

### Return type

[**ModelsProjectView**](ModelsProjectView.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectViewsIdPost**
> ModelsProjectView projectsProjectViewsIdPost(project, id, view)

Updates a project view

Updates a project view.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final project = 56; // int | Project ID
final id = 56; // int | Project View ID
final view = ModelsProjectView(); // ModelsProjectView | The project view with updated values you want to change.

try {
    final result = api_instance.projectsProjectViewsIdPost(project, id, view);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsProjectViewsIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **int**| Project ID | 
 **id** | **int**| Project View ID | 
 **view** | [**ModelsProjectView**](ModelsProjectView.md)| The project view with updated values you want to change. | 

### Return type

[**ModelsProjectView**](ModelsProjectView.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectViewsPut**
> ModelsProjectView projectsProjectViewsPut(project, view)

Create a project view

Create a project view in a specific project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final project = 56; // int | Project ID
final view = ModelsProjectView(); // ModelsProjectView | The project view you want to create.

try {
    final result = api_instance.projectsProjectViewsPut(project, view);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsProjectViewsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **int**| Project ID | 
 **view** | [**ModelsProjectView**](ModelsProjectView.md)| The project view you want to create. | 

### Return type

[**ModelsProjectView**](ModelsProjectView.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsPut**
> ModelsProject projectsPut(project)

Creates a new project

Creates a new project. If a parent project is provided the user needs to have write access to that project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectApi();
final project = ModelsProject(); // ModelsProject | The project you want to create.

try {
    final result = api_instance.projectsPut(project);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->projectsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | [**ModelsProject**](ModelsProject.md)| The project you want to create. | 

### Return type

[**ModelsProject**](ModelsProject.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

