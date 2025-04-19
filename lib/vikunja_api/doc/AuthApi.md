# vikunja_flutter_api.api.AuthApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTokenOpenid**](AuthApi.md#gettokenopenid) | **POST** /auth/openid/{provider}/callback | Authenticate a user with OpenID Connect
[**loginPost**](AuthApi.md#loginpost) | **POST** /login | Login
[**registerPost**](AuthApi.md#registerpost) | **POST** /register | Register


# **getTokenOpenid**
> AuthToken getTokenOpenid(provider, callback)

Authenticate a user with OpenID Connect

After a redirect from the OpenID Connect provider to the frontend has been made with the authentication `code`, this endpoint can be used to obtain a jwt token for that user and thus log them in.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final provider = 56; // int | The OpenID Connect provider key as returned by the /info endpoint
final callback = OpenidCallback(); // OpenidCallback | The openid callback

try {
    final result = api_instance.getTokenOpenid(provider, callback);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->getTokenOpenid: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **int**| The OpenID Connect provider key as returned by the /info endpoint | 
 **callback** | [**OpenidCallback**](OpenidCallback.md)| The openid callback | 

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginPost**
> AuthToken loginPost(credentials)

Login

Logs a user in. Returns a JWT-Token to authenticate further requests.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = AuthApi();
final credentials = UserLogin(); // UserLogin | The login credentials

try {
    final result = api_instance.loginPost(credentials);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->loginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**UserLogin**](UserLogin.md)| The login credentials | 

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerPost**
> UserUser registerPost(credentials)

Register

Creates a new user account.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = AuthApi();
final credentials = UserAPIUserPassword(); // UserAPIUserPassword | The user credentials

try {
    final result = api_instance.registerPost(credentials);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->registerPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**UserAPIUserPassword**](UserAPIUserPassword.md)| The user credentials | 

### Return type

[**UserUser**](UserUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

