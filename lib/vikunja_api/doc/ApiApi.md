# vikunja_flutter_api.api.ApiApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**routesGet**](ApiApi.md#routesget) | **GET** /routes | Get a list of all token api routes
[**tokensGet**](ApiApi.md#tokensget) | **GET** /tokens | Get all api tokens of the current user
[**tokensPut**](ApiApi.md#tokensput) | **PUT** /tokens | Create a new api token
[**tokensTokenIDDelete**](ApiApi.md#tokenstokeniddelete) | **DELETE** /tokens/{tokenID} | Deletes an existing api token


# **routesGet**
> List<Map<String, ModelsRouteDetail>> routesGet()

Get a list of all token api routes

Returns a list of all API routes which are available to use with an api token, not a user login.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();

try {
    final result = api_instance.routesGet();
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->routesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Map<String, ModelsRouteDetail>>**](Map.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensGet**
> List<ModelsAPIToken> tokensGet(page, perPage, s)

Get all api tokens of the current user

Returns all api tokens the current user has created.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final page = 56; // int | The page number, used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of tokens per page. This parameter is limited by the configured maximum of items per page.
final s = s_example; // String | Search tokens by their title.

try {
    final result = api_instance.tokensGet(page, perPage, s);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->tokensGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number, used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of tokens per page. This parameter is limited by the configured maximum of items per page. | [optional] 
 **s** | **String**| Search tokens by their title. | [optional] 

### Return type

[**List<ModelsAPIToken>**](ModelsAPIToken.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensPut**
> ModelsAPIToken tokensPut(token)

Create a new api token

Create a new api token to use on behalf of the user creating it.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final token = ModelsAPIToken(); // ModelsAPIToken | The token object with required fields

try {
    final result = api_instance.tokensPut(token);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->tokensPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | [**ModelsAPIToken**](ModelsAPIToken.md)| The token object with required fields | 

### Return type

[**ModelsAPIToken**](ModelsAPIToken.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokensTokenIDDelete**
> ModelsMessage tokensTokenIDDelete(tokenID)

Deletes an existing api token

Delete any of the user's api tokens.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = ApiApi();
final tokenID = 56; // int | Token ID

try {
    final result = api_instance.tokensTokenIDDelete(tokenID);
    print(result);
} catch (e) {
    print('Exception when calling ApiApi->tokensTokenIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenID** | **int**| Token ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

