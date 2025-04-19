# vikunja_flutter_api.api.MigrationApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**migrationMicrosoftTodoAuthGet**](MigrationApi.md#migrationmicrosofttodoauthget) | **GET** /migration/microsoft-todo/auth | Get the auth url from Microsoft Todo
[**migrationMicrosoftTodoMigratePost**](MigrationApi.md#migrationmicrosofttodomigratepost) | **POST** /migration/microsoft-todo/migrate | Migrate all projects, tasks etc. from Microsoft Todo
[**migrationMicrosoftTodoStatusGet**](MigrationApi.md#migrationmicrosofttodostatusget) | **GET** /migration/microsoft-todo/status | Get migration status
[**migrationTicktickMigratePost**](MigrationApi.md#migrationticktickmigratepost) | **POST** /migration/ticktick/migrate | Import all projects, tasks etc. from a TickTick backup export
[**migrationTicktickStatusGet**](MigrationApi.md#migrationticktickstatusget) | **GET** /migration/ticktick/status | Get migration status
[**migrationTodoistAuthGet**](MigrationApi.md#migrationtodoistauthget) | **GET** /migration/todoist/auth | Get the auth url from todoist
[**migrationTodoistMigratePost**](MigrationApi.md#migrationtodoistmigratepost) | **POST** /migration/todoist/migrate | Migrate all lists, tasks etc. from todoist
[**migrationTodoistStatusGet**](MigrationApi.md#migrationtodoiststatusget) | **GET** /migration/todoist/status | Get migration status
[**migrationTrelloAuthGet**](MigrationApi.md#migrationtrelloauthget) | **GET** /migration/trello/auth | Get the auth url from trello
[**migrationTrelloMigratePost**](MigrationApi.md#migrationtrellomigratepost) | **POST** /migration/trello/migrate | Migrate all projects, tasks etc. from trello
[**migrationTrelloStatusGet**](MigrationApi.md#migrationtrellostatusget) | **GET** /migration/trello/status | Get migration status
[**migrationVikunjaFileMigratePost**](MigrationApi.md#migrationvikunjafilemigratepost) | **POST** /migration/vikunja-file/migrate | Import all projects, tasks etc. from a Vikunja data export
[**migrationVikunjaFileStatusGet**](MigrationApi.md#migrationvikunjafilestatusget) | **GET** /migration/vikunja-file/status | Get migration status


# **migrationMicrosoftTodoAuthGet**
> HandlerAuthURL migrationMicrosoftTodoAuthGet()

Get the auth url from Microsoft Todo

Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from Microsoft Todo to Vikunja.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();

try {
    final result = api_instance.migrationMicrosoftTodoAuthGet();
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationMicrosoftTodoAuthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HandlerAuthURL**](HandlerAuthURL.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationMicrosoftTodoMigratePost**
> ModelsMessage migrationMicrosoftTodoMigratePost(migrationCode)

Migrate all projects, tasks etc. from Microsoft Todo

Migrates all tasklinsts, tasks, notes and reminders from Microsoft Todo to Vikunja.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();
final migrationCode = MicrosofttodoMigration(); // MicrosofttodoMigration | The auth token previously obtained from the auth url. See the docs for /migration/microsoft-todo/auth.

try {
    final result = api_instance.migrationMicrosoftTodoMigratePost(migrationCode);
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationMicrosoftTodoMigratePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationCode** | [**MicrosofttodoMigration**](MicrosofttodoMigration.md)| The auth token previously obtained from the auth url. See the docs for /migration/microsoft-todo/auth. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationMicrosoftTodoStatusGet**
> MigrationStatus migrationMicrosoftTodoStatusGet()

Get migration status

Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();

try {
    final result = api_instance.migrationMicrosoftTodoStatusGet();
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationMicrosoftTodoStatusGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MigrationStatus**](MigrationStatus.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationTicktickMigratePost**
> ModelsMessage migrationTicktickMigratePost(import_)

Import all projects, tasks etc. from a TickTick backup export

Imports all projects, tasks, notes, reminders, subtasks and files from a TickTick backup export into Vikunja.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();
final import_ = import__example; // String | The TickTick backup csv file.

try {
    final result = api_instance.migrationTicktickMigratePost(import_);
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationTicktickMigratePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_** | **String**| The TickTick backup csv file. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationTicktickStatusGet**
> MigrationStatus migrationTicktickStatusGet()

Get migration status

Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();

try {
    final result = api_instance.migrationTicktickStatusGet();
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationTicktickStatusGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MigrationStatus**](MigrationStatus.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationTodoistAuthGet**
> HandlerAuthURL migrationTodoistAuthGet()

Get the auth url from todoist

Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from todoist to Vikunja.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();

try {
    final result = api_instance.migrationTodoistAuthGet();
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationTodoistAuthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HandlerAuthURL**](HandlerAuthURL.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationTodoistMigratePost**
> ModelsMessage migrationTodoistMigratePost(migrationCode)

Migrate all lists, tasks etc. from todoist

Migrates all projects, tasks, notes, reminders, subtasks and files from todoist to vikunja.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();
final migrationCode = TodoistMigration(); // TodoistMigration | The auth code previously obtained from the auth url. See the docs for /migration/todoist/auth.

try {
    final result = api_instance.migrationTodoistMigratePost(migrationCode);
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationTodoistMigratePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationCode** | [**TodoistMigration**](TodoistMigration.md)| The auth code previously obtained from the auth url. See the docs for /migration/todoist/auth. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationTodoistStatusGet**
> MigrationStatus migrationTodoistStatusGet()

Get migration status

Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();

try {
    final result = api_instance.migrationTodoistStatusGet();
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationTodoistStatusGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MigrationStatus**](MigrationStatus.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationTrelloAuthGet**
> HandlerAuthURL migrationTrelloAuthGet()

Get the auth url from trello

Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from trello to Vikunja.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();

try {
    final result = api_instance.migrationTrelloAuthGet();
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationTrelloAuthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HandlerAuthURL**](HandlerAuthURL.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationTrelloMigratePost**
> ModelsMessage migrationTrelloMigratePost(migrationCode)

Migrate all projects, tasks etc. from trello

Migrates all projects, tasks, notes, reminders, subtasks and files from trello to vikunja.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();
final migrationCode = TrelloMigration(); // TrelloMigration | The auth token previously obtained from the auth url. See the docs for /migration/trello/auth.

try {
    final result = api_instance.migrationTrelloMigratePost(migrationCode);
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationTrelloMigratePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationCode** | [**TrelloMigration**](TrelloMigration.md)| The auth token previously obtained from the auth url. See the docs for /migration/trello/auth. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationTrelloStatusGet**
> MigrationStatus migrationTrelloStatusGet()

Get migration status

Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();

try {
    final result = api_instance.migrationTrelloStatusGet();
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationTrelloStatusGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MigrationStatus**](MigrationStatus.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationVikunjaFileMigratePost**
> ModelsMessage migrationVikunjaFileMigratePost(import_)

Import all projects, tasks etc. from a Vikunja data export

Imports all projects, tasks, notes, reminders, subtasks and files from a Vikunjda data export into Vikunja.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();
final import_ = import__example; // String | The Vikunja export zip file.

try {
    final result = api_instance.migrationVikunjaFileMigratePost(import_);
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationVikunjaFileMigratePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_** | **String**| The Vikunja export zip file. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **migrationVikunjaFileStatusGet**
> MigrationStatus migrationVikunjaFileStatusGet()

Get migration status

Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MigrationApi();

try {
    final result = api_instance.migrationVikunjaFileStatusGet();
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->migrationVikunjaFileStatusGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MigrationStatus**](MigrationStatus.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

