# vikunja_flutter_api.api.UserApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userConfirmPost**](UserApi.md#userconfirmpost) | **POST** /user/confirm | Confirm the email of a new user
[**userDeletionCancelPost**](UserApi.md#userdeletioncancelpost) | **POST** /user/deletion/cancel | Abort a user deletion request
[**userDeletionConfirmPost**](UserApi.md#userdeletionconfirmpost) | **POST** /user/deletion/confirm | Confirm a user deletion request
[**userDeletionRequestPost**](UserApi.md#userdeletionrequestpost) | **POST** /user/deletion/request | Request the deletion of the user
[**userExportDownloadPost**](UserApi.md#userexportdownloadpost) | **POST** /user/export/download | Download a user data export.
[**userExportRequestPost**](UserApi.md#userexportrequestpost) | **POST** /user/export/request | Request a user data export.
[**userGet**](UserApi.md#userget) | **GET** /user | Get user information
[**userPasswordPost**](UserApi.md#userpasswordpost) | **POST** /user/password | Change password
[**userPasswordResetPost**](UserApi.md#userpasswordresetpost) | **POST** /user/password/reset | Resets a password
[**userPasswordTokenPost**](UserApi.md#userpasswordtokenpost) | **POST** /user/password/token | Request password reset token
[**userSettingsAvatarGet**](UserApi.md#usersettingsavatarget) | **GET** /user/settings/avatar | Return user avatar setting
[**userSettingsAvatarPost**](UserApi.md#usersettingsavatarpost) | **POST** /user/settings/avatar | Set the user's avatar
[**userSettingsAvatarUploadPut**](UserApi.md#usersettingsavataruploadput) | **PUT** /user/settings/avatar/upload | Upload a user avatar
[**userSettingsEmailPost**](UserApi.md#usersettingsemailpost) | **POST** /user/settings/email | Update email address
[**userSettingsGeneralPost**](UserApi.md#usersettingsgeneralpost) | **POST** /user/settings/general | Change general user settings of the current user.
[**userSettingsTokenCaldavGet**](UserApi.md#usersettingstokencaldavget) | **GET** /user/settings/token/caldav | Returns the caldav tokens for the current user
[**userSettingsTokenCaldavIdGet**](UserApi.md#usersettingstokencaldavidget) | **GET** /user/settings/token/caldav/{id} | Delete a caldav token by id
[**userSettingsTokenCaldavPut**](UserApi.md#usersettingstokencaldavput) | **PUT** /user/settings/token/caldav | Generate a caldav token
[**userSettingsTotpDisablePost**](UserApi.md#usersettingstotpdisablepost) | **POST** /user/settings/totp/disable | Disable totp settings
[**userSettingsTotpEnablePost**](UserApi.md#usersettingstotpenablepost) | **POST** /user/settings/totp/enable | Enable a previously enrolled totp setting.
[**userSettingsTotpEnrollPost**](UserApi.md#usersettingstotpenrollpost) | **POST** /user/settings/totp/enroll | Enroll a user into totp
[**userSettingsTotpGet**](UserApi.md#usersettingstotpget) | **GET** /user/settings/totp | Totp setting for the current user
[**userSettingsTotpQrcodeGet**](UserApi.md#usersettingstotpqrcodeget) | **GET** /user/settings/totp/qrcode | Totp QR Code
[**userTimezonesGet**](UserApi.md#usertimezonesget) | **GET** /user/timezones | Get all available time zones on this vikunja instance
[**userTokenPost**](UserApi.md#usertokenpost) | **POST** /user/token | Renew user token
[**usernameAvatarGet**](UserApi.md#usernameavatarget) | **GET** /{username}/avatar | User Avatar
[**usersGet**](UserApi.md#usersget) | **GET** /users | Get users


# **userConfirmPost**
> ModelsMessage userConfirmPost(credentials)

Confirm the email of a new user

Confirms the email of a newly registered user.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = UserApi();
final credentials = UserEmailConfirm(); // UserEmailConfirm | The token.

try {
    final result = api_instance.userConfirmPost(credentials);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userConfirmPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**UserEmailConfirm**](UserEmailConfirm.md)| The token. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeletionCancelPost**
> ModelsMessage userDeletionCancelPost(credentials)

Abort a user deletion request

Aborts an in-progress user deletion.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = UserApi();
final credentials = V1UserPasswordConfirmation(); // V1UserPasswordConfirmation | The user password to confirm.

try {
    final result = api_instance.userDeletionCancelPost(credentials);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userDeletionCancelPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**V1UserPasswordConfirmation**](V1UserPasswordConfirmation.md)| The user password to confirm. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeletionConfirmPost**
> ModelsMessage userDeletionConfirmPost(credentials)

Confirm a user deletion request

Confirms the deletion request of a user sent via email.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = UserApi();
final credentials = V1UserDeletionRequestConfirm(); // V1UserDeletionRequestConfirm | The token.

try {
    final result = api_instance.userDeletionConfirmPost(credentials);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userDeletionConfirmPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**V1UserDeletionRequestConfirm**](V1UserDeletionRequestConfirm.md)| The token. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeletionRequestPost**
> ModelsMessage userDeletionRequestPost(credentials)

Request the deletion of the user

Requests the deletion of the current user. It will trigger an email which has to be confirmed to start the deletion.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = UserApi();
final credentials = V1UserPasswordConfirmation(); // V1UserPasswordConfirmation | The user password.

try {
    final result = api_instance.userDeletionRequestPost(credentials);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userDeletionRequestPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**V1UserPasswordConfirmation**](V1UserPasswordConfirmation.md)| The user password. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userExportDownloadPost**
> ModelsMessage userExportDownloadPost(password)

Download a user data export.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final password = V1UserPasswordConfirmation(); // V1UserPasswordConfirmation | User password to confirm the download.

try {
    final result = api_instance.userExportDownloadPost(password);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userExportDownloadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | [**V1UserPasswordConfirmation**](V1UserPasswordConfirmation.md)| User password to confirm the download. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userExportRequestPost**
> ModelsMessage userExportRequestPost(password)

Request a user data export.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final password = V1UserPasswordConfirmation(); // V1UserPasswordConfirmation | User password to confirm the data export request.

try {
    final result = api_instance.userExportRequestPost(password);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userExportRequestPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | [**V1UserPasswordConfirmation**](V1UserPasswordConfirmation.md)| User password to confirm the data export request. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userGet**
> V1UserWithSettings userGet()

Get user information

Returns the current user object with their settings.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();

try {
    final result = api_instance.userGet();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1UserWithSettings**](V1UserWithSettings.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPasswordPost**
> ModelsMessage userPasswordPost(userPassword)

Change password

Lets the current user change its password.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final userPassword = V1UserPassword(); // V1UserPassword | The current and new password.

try {
    final result = api_instance.userPasswordPost(userPassword);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userPasswordPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPassword** | [**V1UserPassword**](V1UserPassword.md)| The current and new password. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPasswordResetPost**
> ModelsMessage userPasswordResetPost(credentials)

Resets a password

Resets a user email with a previously reset token.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = UserApi();
final credentials = UserPasswordReset(); // UserPasswordReset | The token with the new password.

try {
    final result = api_instance.userPasswordResetPost(credentials);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userPasswordResetPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**UserPasswordReset**](UserPasswordReset.md)| The token with the new password. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPasswordTokenPost**
> ModelsMessage userPasswordTokenPost(credentials)

Request password reset token

Requests a token to reset a users password. The token is sent via email.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = UserApi();
final credentials = UserPasswordTokenRequest(); // UserPasswordTokenRequest | The username of the user to request a token for.

try {
    final result = api_instance.userPasswordTokenPost(credentials);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userPasswordTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**UserPasswordTokenRequest**](UserPasswordTokenRequest.md)| The username of the user to request a token for. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsAvatarGet**
> V1UserAvatarProvider userSettingsAvatarGet()

Return user avatar setting

Returns the current user's avatar setting.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();

try {
    final result = api_instance.userSettingsAvatarGet();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsAvatarGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1UserAvatarProvider**](V1UserAvatarProvider.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsAvatarPost**
> ModelsMessage userSettingsAvatarPost(avatar)

Set the user's avatar

Changes the user avatar. Valid types are gravatar (uses the user email), upload, initials, default.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final avatar = V1UserAvatarProvider(); // V1UserAvatarProvider | The user's avatar setting

try {
    final result = api_instance.userSettingsAvatarPost(avatar);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsAvatarPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **avatar** | [**V1UserAvatarProvider**](V1UserAvatarProvider.md)| The user's avatar setting | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsAvatarUploadPut**
> ModelsMessage userSettingsAvatarUploadPut(avatar)

Upload a user avatar

Upload a user avatar. This will also set the user's avatar provider to \"upload\"

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final avatar = avatar_example; // String | The avatar as single file.

try {
    final result = api_instance.userSettingsAvatarUploadPut(avatar);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsAvatarUploadPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **avatar** | **String**| The avatar as single file. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsEmailPost**
> ModelsMessage userSettingsEmailPost(userEmailUpdate)

Update email address

Lets the current user change their email address.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final userEmailUpdate = UserEmailUpdate(); // UserEmailUpdate | The new email address and current password.

try {
    final result = api_instance.userSettingsEmailPost(userEmailUpdate);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsEmailPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userEmailUpdate** | [**UserEmailUpdate**](UserEmailUpdate.md)| The new email address and current password. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsGeneralPost**
> ModelsMessage userSettingsGeneralPost(avatar)

Change general user settings of the current user.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final avatar = V1UserSettings(); // V1UserSettings | The updated user settings

try {
    final result = api_instance.userSettingsGeneralPost(avatar);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsGeneralPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **avatar** | [**V1UserSettings**](V1UserSettings.md)| The updated user settings | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsTokenCaldavGet**
> List<UserToken> userSettingsTokenCaldavGet()

Returns the caldav tokens for the current user

Return the IDs and created dates of all caldav tokens for the current user.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();

try {
    final result = api_instance.userSettingsTokenCaldavGet();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsTokenCaldavGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserToken>**](UserToken.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsTokenCaldavIdGet**
> ModelsMessage userSettingsTokenCaldavIdGet(id)

Delete a caldav token by id

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final id = 56; // int | Token ID

try {
    final result = api_instance.userSettingsTokenCaldavIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsTokenCaldavIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Token ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsTokenCaldavPut**
> UserToken userSettingsTokenCaldavPut()

Generate a caldav token

Generates a caldav token which can be used for the caldav api. It is not possible to see the token again after it was generated.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();

try {
    final result = api_instance.userSettingsTokenCaldavPut();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsTokenCaldavPut: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserToken**](UserToken.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsTotpDisablePost**
> ModelsMessage userSettingsTotpDisablePost(totp)

Disable totp settings

Disables any totp settings for the current user.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final totp = UserLogin(); // UserLogin | The current user's password (only password is enough).

try {
    final result = api_instance.userSettingsTotpDisablePost(totp);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsTotpDisablePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **totp** | [**UserLogin**](UserLogin.md)| The current user's password (only password is enough). | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsTotpEnablePost**
> ModelsMessage userSettingsTotpEnablePost(totp)

Enable a previously enrolled totp setting.

Enables a previously enrolled totp setting by providing a totp passcode.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final totp = UserTOTPPasscode(); // UserTOTPPasscode | The totp passcode.

try {
    final result = api_instance.userSettingsTotpEnablePost(totp);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsTotpEnablePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **totp** | [**UserTOTPPasscode**](UserTOTPPasscode.md)| The totp passcode. | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsTotpEnrollPost**
> UserTOTP userSettingsTotpEnrollPost()

Enroll a user into totp

Creates an initial setup for the user in the db. After this step, the user needs to verify they have a working totp setup with the \"enable totp\" endpoint.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();

try {
    final result = api_instance.userSettingsTotpEnrollPost();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsTotpEnrollPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserTOTP**](UserTOTP.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsTotpGet**
> UserTOTP userSettingsTotpGet()

Totp setting for the current user

Returns the current user totp setting or an error if it is not enabled.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();

try {
    final result = api_instance.userSettingsTotpGet();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsTotpGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserTOTP**](UserTOTP.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsTotpQrcodeGet**
> MultipartFile userSettingsTotpQrcodeGet()

Totp QR Code

Returns a qr code for easier setup at end user's devices.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();

try {
    final result = api_instance.userSettingsTotpQrcodeGet();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userSettingsTotpQrcodeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userTimezonesGet**
> List<String> userTimezonesGet()

Get all available time zones on this vikunja instance

Because available time zones depend on the system Vikunja is running on, this endpoint returns a project of all valid time zones this particular Vikunja instance can handle. The project of time zones is not sorted, you should sort it on the client.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();

try {
    final result = api_instance.userTimezonesGet();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userTimezonesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userTokenPost**
> AuthToken userTokenPost()

Renew user token

Returns a new valid jwt user token with an extended length.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = UserApi();

try {
    final result = api_instance.userTokenPost();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->userTokenPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usernameAvatarGet**
> MultipartFile usernameAvatarGet(username, size)

User Avatar

Returns the user avatar as image.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = UserApi();
final username = username_example; // String | The username of the user who's avatar you want to get
final size = 56; // int | The size of the avatar you want to get. If bigger than the max configured size this will be adjusted to the maximum size.

try {
    final result = api_instance.usernameAvatarGet(username, size);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->usernameAvatarGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username of the user who's avatar you want to get | 
 **size** | **int**| The size of the avatar you want to get. If bigger than the max configured size this will be adjusted to the maximum size. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGet**
> List<UserUser> usersGet(s)

Get users

Search for a user by its username, name or full email. Name (not username) or email require that the user has enabled this in their settings.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = UserApi();
final s = s_example; // String | The search criteria.

try {
    final result = api_instance.usersGet(s);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->usersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s** | **String**| The search criteria. | [optional] 

### Return type

[**List<UserUser>**](UserUser.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

