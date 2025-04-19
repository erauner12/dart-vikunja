# vikunja_flutter_api.api.SharingApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationsPost**](SharingApi.md#notificationspost) | **POST** /notifications | Mark all notifications of a user as read
[**projectsIdTeamsGet**](SharingApi.md#projectsidteamsget) | **GET** /projects/{id}/teams | Get teams on a project
[**projectsIdTeamsPut**](SharingApi.md#projectsidteamsput) | **PUT** /projects/{id}/teams | Add a team to a project
[**projectsIdUsersGet**](SharingApi.md#projectsidusersget) | **GET** /projects/{id}/users | Get users on a project
[**projectsIdUsersPut**](SharingApi.md#projectsidusersput) | **PUT** /projects/{id}/users | Add a user to a project
[**projectsProjectIDTeamsTeamIDDelete**](SharingApi.md#projectsprojectidteamsteamiddelete) | **DELETE** /projects/{projectID}/teams/{teamID} | Delete a team from a project
[**projectsProjectIDTeamsTeamIDPost**](SharingApi.md#projectsprojectidteamsteamidpost) | **POST** /projects/{projectID}/teams/{teamID} | Update a team <-> project relation
[**projectsProjectIDUsersUserIDDelete**](SharingApi.md#projectsprojectidusersuseriddelete) | **DELETE** /projects/{projectID}/users/{userID} | Delete a user from a project
[**projectsProjectIDUsersUserIDPost**](SharingApi.md#projectsprojectidusersuseridpost) | **POST** /projects/{projectID}/users/{userID} | Update a user <-> project relation
[**projectsProjectSharesGet**](SharingApi.md#projectsprojectsharesget) | **GET** /projects/{project}/shares | Get all link shares for a project
[**projectsProjectSharesPut**](SharingApi.md#projectsprojectsharesput) | **PUT** /projects/{project}/shares | Share a project via link
[**projectsProjectSharesShareDelete**](SharingApi.md#projectsprojectsharessharedelete) | **DELETE** /projects/{project}/shares/{share} | Remove a link share
[**projectsProjectSharesShareGet**](SharingApi.md#projectsprojectsharesshareget) | **GET** /projects/{project}/shares/{share} | Get one link shares for a project
[**sharesShareAuthPost**](SharingApi.md#sharesshareauthpost) | **POST** /shares/{share}/auth | Get an auth token for a share


# **notificationsPost**
> ModelsMessage notificationsPost()

Mark all notifications of a user as read

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = SharingApi();

try {
    final result = api_instance.notificationsPost();
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->notificationsPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdTeamsGet**
> List<ModelsTeamWithRight> projectsIdTeamsGet(id, page, perPage, s)

Get teams on a project

Returns a project with all teams which have access on a given project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final id = 56; // int | Project ID
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search teams by its name.

try {
    final result = api_instance.projectsIdTeamsGet(id, page, perPage, s);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsIdTeamsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search teams by its name. | [optional] 

### Return type

[**List<ModelsTeamWithRight>**](ModelsTeamWithRight.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdTeamsPut**
> ModelsTeamProject projectsIdTeamsPut(id, project)

Add a team to a project

Gives a team access to a project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final id = 56; // int | Project ID
final project = ModelsTeamProject(); // ModelsTeamProject | The team you want to add to the project.

try {
    final result = api_instance.projectsIdTeamsPut(id, project);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsIdTeamsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **project** | [**ModelsTeamProject**](ModelsTeamProject.md)| The team you want to add to the project. | 

### Return type

[**ModelsTeamProject**](ModelsTeamProject.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdUsersGet**
> List<ModelsUserWithRight> projectsIdUsersGet(id, page, perPage, s)

Get users on a project

Returns a project with all users which have access on a given project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final id = 56; // int | Project ID
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search users by its name.

try {
    final result = api_instance.projectsIdUsersGet(id, page, perPage, s);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsIdUsersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search users by its name. | [optional] 

### Return type

[**List<ModelsUserWithRight>**](ModelsUserWithRight.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdUsersPut**
> ModelsProjectUser projectsIdUsersPut(id, project)

Add a user to a project

Gives a user access to a project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final id = 56; // int | Project ID
final project = ModelsProjectUser(); // ModelsProjectUser | The user you want to add to the project.

try {
    final result = api_instance.projectsIdUsersPut(id, project);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsIdUsersPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **project** | [**ModelsProjectUser**](ModelsProjectUser.md)| The user you want to add to the project. | 

### Return type

[**ModelsProjectUser**](ModelsProjectUser.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectIDTeamsTeamIDDelete**
> ModelsMessage projectsProjectIDTeamsTeamIDDelete(projectID, teamID)

Delete a team from a project

Delets a team from a project. The team won't have access to the project anymore.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final projectID = 56; // int | Project ID
final teamID = 56; // int | Team ID

try {
    final result = api_instance.projectsProjectIDTeamsTeamIDDelete(projectID, teamID);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsProjectIDTeamsTeamIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **int**| Project ID | 
 **teamID** | **int**| Team ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectIDTeamsTeamIDPost**
> ModelsTeamProject projectsProjectIDTeamsTeamIDPost(projectID, teamID, project)

Update a team <-> project relation

Update a team <-> project relation. Mostly used to update the right that team has.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final projectID = 56; // int | Project ID
final teamID = 56; // int | Team ID
final project = ModelsTeamProject(); // ModelsTeamProject | The team you want to update.

try {
    final result = api_instance.projectsProjectIDTeamsTeamIDPost(projectID, teamID, project);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsProjectIDTeamsTeamIDPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **int**| Project ID | 
 **teamID** | **int**| Team ID | 
 **project** | [**ModelsTeamProject**](ModelsTeamProject.md)| The team you want to update. | 

### Return type

[**ModelsTeamProject**](ModelsTeamProject.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectIDUsersUserIDDelete**
> ModelsMessage projectsProjectIDUsersUserIDDelete(projectID, userID)

Delete a user from a project

Delets a user from a project. The user won't have access to the project anymore.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final projectID = 56; // int | Project ID
final userID = 56; // int | User ID

try {
    final result = api_instance.projectsProjectIDUsersUserIDDelete(projectID, userID);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsProjectIDUsersUserIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **int**| Project ID | 
 **userID** | **int**| User ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectIDUsersUserIDPost**
> ModelsProjectUser projectsProjectIDUsersUserIDPost(projectID, userID, project)

Update a user <-> project relation

Update a user <-> project relation. Mostly used to update the right that user has.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final projectID = 56; // int | Project ID
final userID = 56; // int | User ID
final project = ModelsProjectUser(); // ModelsProjectUser | The user you want to update.

try {
    final result = api_instance.projectsProjectIDUsersUserIDPost(projectID, userID, project);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsProjectIDUsersUserIDPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectID** | **int**| Project ID | 
 **userID** | **int**| User ID | 
 **project** | [**ModelsProjectUser**](ModelsProjectUser.md)| The user you want to update. | 

### Return type

[**ModelsProjectUser**](ModelsProjectUser.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectSharesGet**
> List<ModelsLinkSharing> projectsProjectSharesGet(project, page, perPage, s)

Get all link shares for a project

Returns all link shares which exist for a given project

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final project = 56; // int | Project ID
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search shares by hash.

try {
    final result = api_instance.projectsProjectSharesGet(project, page, perPage, s);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsProjectSharesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **int**| Project ID | 
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search shares by hash. | [optional] 

### Return type

[**List<ModelsLinkSharing>**](ModelsLinkSharing.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectSharesPut**
> ModelsLinkSharing projectsProjectSharesPut(project, label)

Share a project via link

Share a project via link. The user needs to have write-access to the project to be able do this.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final project = 56; // int | Project ID
final label = ModelsLinkSharing(); // ModelsLinkSharing | The new link share object

try {
    final result = api_instance.projectsProjectSharesPut(project, label);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsProjectSharesPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **int**| Project ID | 
 **label** | [**ModelsLinkSharing**](ModelsLinkSharing.md)| The new link share object | 

### Return type

[**ModelsLinkSharing**](ModelsLinkSharing.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectSharesShareDelete**
> ModelsMessage projectsProjectSharesShareDelete(project, share)

Remove a link share

Remove a link share. The user needs to have write-access to the project to be able do this.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final project = 56; // int | Project ID
final share = 56; // int | Share Link ID

try {
    final result = api_instance.projectsProjectSharesShareDelete(project, share);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsProjectSharesShareDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **int**| Project ID | 
 **share** | **int**| Share Link ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsProjectSharesShareGet**
> ModelsLinkSharing projectsProjectSharesShareGet(project, share)

Get one link shares for a project

Returns one link share by its ID.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SharingApi();
final project = 56; // int | Project ID
final share = 56; // int | Share ID

try {
    final result = api_instance.projectsProjectSharesShareGet(project, share);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->projectsProjectSharesShareGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **int**| Project ID | 
 **share** | **int**| Share ID | 

### Return type

[**ModelsLinkSharing**](ModelsLinkSharing.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sharesShareAuthPost**
> AuthToken sharesShareAuthPost(share, password)

Get an auth token for a share

Get a jwt auth token for a shared project from a share hash.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = SharingApi();
final share = share_example; // String | The share hash
final password = V1LinkShareAuth(); // V1LinkShareAuth | The password for link shares which require one.

try {
    final result = api_instance.sharesShareAuthPost(share, password);
    print(result);
} catch (e) {
    print('Exception when calling SharingApi->sharesShareAuthPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **share** | **String**| The share hash | 
 **password** | [**V1LinkShareAuth**](V1LinkShareAuth.md)| The password for link shares which require one. | 

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

