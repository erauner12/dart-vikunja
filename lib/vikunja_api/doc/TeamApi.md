# vikunja_flutter_api.api.TeamApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**teamsGet**](TeamApi.md#teamsget) | **GET** /teams | Get teams
[**teamsIdDelete**](TeamApi.md#teamsiddelete) | **DELETE** /teams/{id} | Deletes a team
[**teamsIdGet**](TeamApi.md#teamsidget) | **GET** /teams/{id} | Gets one team
[**teamsIdMembersPut**](TeamApi.md#teamsidmembersput) | **PUT** /teams/{id}/members | Add a user to a team
[**teamsIdMembersUserIDAdminPost**](TeamApi.md#teamsidmembersuseridadminpost) | **POST** /teams/{id}/members/{userID}/admin | Toggle a team member's admin status
[**teamsIdMembersUserIDDelete**](TeamApi.md#teamsidmembersuseriddelete) | **DELETE** /teams/{id}/members/{userID} | Remove a user from a team
[**teamsIdPost**](TeamApi.md#teamsidpost) | **POST** /teams/{id} | Updates a team
[**teamsPut**](TeamApi.md#teamsput) | **PUT** /teams | Creates a new team


# **teamsGet**
> List<ModelsTeam> teamsGet(page, perPage, s)

Get teams

Returns all teams the current user is part of.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamApi();
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search teams by its name.

try {
    final result = api_instance.teamsGet(page, perPage, s);
    print(result);
} catch (e) {
    print('Exception when calling TeamApi->teamsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search teams by its name. | [optional] 

### Return type

[**List<ModelsTeam>**](ModelsTeam.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsIdDelete**
> ModelsMessage teamsIdDelete(id)

Deletes a team

Delets a team. This will also remove the access for all users in that team.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamApi();
final id = 56; // int | Team ID

try {
    final result = api_instance.teamsIdDelete(id);
    print(result);
} catch (e) {
    print('Exception when calling TeamApi->teamsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Team ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsIdGet**
> ModelsTeam teamsIdGet(id)

Gets one team

Returns a team by its ID.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamApi();
final id = 56; // int | Team ID

try {
    final result = api_instance.teamsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling TeamApi->teamsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Team ID | 

### Return type

[**ModelsTeam**](ModelsTeam.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsIdMembersPut**
> ModelsTeamMember teamsIdMembersPut(id, team)

Add a user to a team

Add a user to a team.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamApi();
final id = 56; // int | Team ID
final team = ModelsTeamMember(); // ModelsTeamMember | The user to be added to a team.

try {
    final result = api_instance.teamsIdMembersPut(id, team);
    print(result);
} catch (e) {
    print('Exception when calling TeamApi->teamsIdMembersPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Team ID | 
 **team** | [**ModelsTeamMember**](ModelsTeamMember.md)| The user to be added to a team. | 

### Return type

[**ModelsTeamMember**](ModelsTeamMember.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsIdMembersUserIDAdminPost**
> ModelsMessage teamsIdMembersUserIDAdminPost(id, userID)

Toggle a team member's admin status

If a user is team admin, this will make them member and vise-versa.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamApi();
final id = 56; // int | Team ID
final userID = 56; // int | User ID

try {
    final result = api_instance.teamsIdMembersUserIDAdminPost(id, userID);
    print(result);
} catch (e) {
    print('Exception when calling TeamApi->teamsIdMembersUserIDAdminPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Team ID | 
 **userID** | **int**| User ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsIdMembersUserIDDelete**
> ModelsMessage teamsIdMembersUserIDDelete(id, userID)

Remove a user from a team

Remove a user from a team. This will also revoke any access this user might have via that team. A user can remove themselves from the team if they are not the last user in the team.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamApi();
final id = 56; // int | Team ID
final userID = 56; // int | User ID

try {
    final result = api_instance.teamsIdMembersUserIDDelete(id, userID);
    print(result);
} catch (e) {
    print('Exception when calling TeamApi->teamsIdMembersUserIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Team ID | 
 **userID** | **int**| User ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsIdPost**
> ModelsTeam teamsIdPost(id, team)

Updates a team

Updates a team.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamApi();
final id = 56; // int | Team ID
final team = ModelsTeam(); // ModelsTeam | The team with updated values you want to update.

try {
    final result = api_instance.teamsIdPost(id, team);
    print(result);
} catch (e) {
    print('Exception when calling TeamApi->teamsIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Team ID | 
 **team** | [**ModelsTeam**](ModelsTeam.md)| The team with updated values you want to update. | 

### Return type

[**ModelsTeam**](ModelsTeam.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teamsPut**
> ModelsTeam teamsPut(team)

Creates a new team

Creates a new team.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamApi();
final team = ModelsTeam(); // ModelsTeam | The team you want to create.

try {
    final result = api_instance.teamsPut(team);
    print(result);
} catch (e) {
    print('Exception when calling TeamApi->teamsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team** | [**ModelsTeam**](ModelsTeam.md)| The team you want to create. | 

### Return type

[**ModelsTeam**](ModelsTeam.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

