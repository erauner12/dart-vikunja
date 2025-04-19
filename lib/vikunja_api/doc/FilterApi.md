# vikunja_flutter_api.api.FilterApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filtersIdDelete**](FilterApi.md#filtersiddelete) | **DELETE** /filters/{id} | Removes a saved filter
[**filtersIdGet**](FilterApi.md#filtersidget) | **GET** /filters/{id} | Gets one saved filter
[**filtersIdPost**](FilterApi.md#filtersidpost) | **POST** /filters/{id} | Updates a saved filter
[**filtersPut**](FilterApi.md#filtersput) | **PUT** /filters | Creates a new saved filter


# **filtersIdDelete**
> ModelsSavedFilter filtersIdDelete(id)

Removes a saved filter

Removes a saved filter by its ID.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = FilterApi();
final id = 56; // int | Filter ID

try {
    final result = api_instance.filtersIdDelete(id);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->filtersIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Filter ID | 

### Return type

[**ModelsSavedFilter**](ModelsSavedFilter.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filtersIdGet**
> ModelsSavedFilter filtersIdGet(id)

Gets one saved filter

Returns a saved filter by its ID.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = FilterApi();
final id = 56; // int | Filter ID

try {
    final result = api_instance.filtersIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->filtersIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Filter ID | 

### Return type

[**ModelsSavedFilter**](ModelsSavedFilter.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filtersIdPost**
> ModelsSavedFilter filtersIdPost(id)

Updates a saved filter

Updates a saved filter by its ID.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = FilterApi();
final id = 56; // int | Filter ID

try {
    final result = api_instance.filtersIdPost(id);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->filtersIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Filter ID | 

### Return type

[**ModelsSavedFilter**](ModelsSavedFilter.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filtersPut**
> ModelsSavedFilter filtersPut()

Creates a new saved filter

Creates a new saved filter

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = FilterApi();

try {
    final result = api_instance.filtersPut();
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->filtersPut: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ModelsSavedFilter**](ModelsSavedFilter.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

