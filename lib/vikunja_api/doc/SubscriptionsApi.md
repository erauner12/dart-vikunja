# vikunja_flutter_api.api.SubscriptionsApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationsGet**](SubscriptionsApi.md#notificationsget) | **GET** /notifications | Get all notifications for the current user
[**notificationsIdPost**](SubscriptionsApi.md#notificationsidpost) | **POST** /notifications/{id} | Mark a notification as (un-)read
[**subscriptionsEntityEntityIDDelete**](SubscriptionsApi.md#subscriptionsentityentityiddelete) | **DELETE** /subscriptions/{entity}/{entityID} | Unsubscribe the current user from an entity.
[**subscriptionsEntityEntityIDPut**](SubscriptionsApi.md#subscriptionsentityentityidput) | **PUT** /subscriptions/{entity}/{entityID} | Subscribes the current user to an entity.


# **notificationsGet**
> List<NotificationsDatabaseNotification> notificationsGet(page, perPage)

Get all notifications for the current user

Returns an array with all notifications for the current user.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SubscriptionsApi();
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.

try {
    final result = api_instance.notificationsGet(page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling SubscriptionsApi->notificationsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page. | [optional] 

### Return type

[**List<NotificationsDatabaseNotification>**](NotificationsDatabaseNotification.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsIdPost**
> ModelsDatabaseNotifications notificationsIdPost(id)

Mark a notification as (un-)read

Marks a notification as either read or unread. A user can only mark their own notifications as read.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SubscriptionsApi();
final id = 56; // int | Notification ID

try {
    final result = api_instance.notificationsIdPost(id);
    print(result);
} catch (e) {
    print('Exception when calling SubscriptionsApi->notificationsIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Notification ID | 

### Return type

[**ModelsDatabaseNotifications**](ModelsDatabaseNotifications.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsEntityEntityIDDelete**
> ModelsSubscription subscriptionsEntityEntityIDDelete(entity, entityID)

Unsubscribe the current user from an entity.

Unsubscribes the current user to an entity.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SubscriptionsApi();
final entity = entity_example; // String | The entity the user subscribed to. Can be either `project` or `task`.
final entityID = entityID_example; // String | The numeric id of the subscribed entity to.

try {
    final result = api_instance.subscriptionsEntityEntityIDDelete(entity, entityID);
    print(result);
} catch (e) {
    print('Exception when calling SubscriptionsApi->subscriptionsEntityEntityIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity** | **String**| The entity the user subscribed to. Can be either `project` or `task`. | 
 **entityID** | **String**| The numeric id of the subscribed entity to. | 

### Return type

[**ModelsSubscription**](ModelsSubscription.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **subscriptionsEntityEntityIDPut**
> ModelsSubscription subscriptionsEntityEntityIDPut(entity, entityID)

Subscribes the current user to an entity.

Subscribes the current user to an entity.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = SubscriptionsApi();
final entity = entity_example; // String | The entity the user subscribes to. Can be either `project` or `task`.
final entityID = entityID_example; // String | The numeric id of the entity to subscribe to.

try {
    final result = api_instance.subscriptionsEntityEntityIDPut(entity, entityID);
    print(result);
} catch (e) {
    print('Exception when calling SubscriptionsApi->subscriptionsEntityEntityIDPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity** | **String**| The entity the user subscribes to. Can be either `project` or `task`. | 
 **entityID** | **String**| The numeric id of the entity to subscribe to. | 

### Return type

[**ModelsSubscription**](ModelsSubscription.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

