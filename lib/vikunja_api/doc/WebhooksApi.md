# vikunja_flutter_api.api.WebhooksApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projectsIdWebhooksGet**](WebhooksApi.md#projectsidwebhooksget) | **GET** /projects/{id}/webhooks | Get all api webhook targets for the specified project
[**projectsIdWebhooksPut**](WebhooksApi.md#projectsidwebhooksput) | **PUT** /projects/{id}/webhooks | Create a webhook target
[**projectsIdWebhooksWebhookIDDelete**](WebhooksApi.md#projectsidwebhookswebhookiddelete) | **DELETE** /projects/{id}/webhooks/{webhookID} | Deletes an existing webhook target
[**projectsIdWebhooksWebhookIDPost**](WebhooksApi.md#projectsidwebhookswebhookidpost) | **POST** /projects/{id}/webhooks/{webhookID} | Change a webhook target's events.
[**webhooksEventsGet**](WebhooksApi.md#webhookseventsget) | **GET** /webhooks/events | Get all possible webhook events


# **projectsIdWebhooksGet**
> List<ModelsWebhook> projectsIdWebhooksGet(id, page, perPage)

Get all api webhook targets for the specified project

Get all api webhook targets for the specified project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = WebhooksApi();
final id = 56; // int | Project ID
final page = 56; // int | The page number. Used for pagination. If not provided, the first page of results is returned.
final perPage = 56; // int | The maximum number of items per bucket per page. This parameter is limited by the configured maximum of items per page.

try {
    final result = api_instance.projectsIdWebhooksGet(id, page, perPage);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->projectsIdWebhooksGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **page** | **int**| The page number. Used for pagination. If not provided, the first page of results is returned. | [optional] 
 **perPage** | **int**| The maximum number of items per bucket per page. This parameter is limited by the configured maximum of items per page. | [optional] 

### Return type

[**List<ModelsWebhook>**](ModelsWebhook.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdWebhooksPut**
> ModelsWebhook projectsIdWebhooksPut(id, webhook)

Create a webhook target

Create a webhook target which receives POST requests about specified events from a project.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = WebhooksApi();
final id = 56; // int | Project ID
final webhook = ModelsWebhook(); // ModelsWebhook | The webhook target object with required fields

try {
    final result = api_instance.projectsIdWebhooksPut(id, webhook);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->projectsIdWebhooksPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **webhook** | [**ModelsWebhook**](ModelsWebhook.md)| The webhook target object with required fields | 

### Return type

[**ModelsWebhook**](ModelsWebhook.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdWebhooksWebhookIDDelete**
> ModelsMessage projectsIdWebhooksWebhookIDDelete(id, webhookID)

Deletes an existing webhook target

Delete any of the project's webhook targets.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = WebhooksApi();
final id = 56; // int | Project ID
final webhookID = 56; // int | Webhook ID

try {
    final result = api_instance.projectsIdWebhooksWebhookIDDelete(id, webhookID);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->projectsIdWebhooksWebhookIDDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **webhookID** | **int**| Webhook ID | 

### Return type

[**ModelsMessage**](ModelsMessage.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **projectsIdWebhooksWebhookIDPost**
> ModelsWebhook projectsIdWebhooksWebhookIDPost(id, webhookID)

Change a webhook target's events.

Change a webhook target's events. You cannot change other values of a webhook.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = WebhooksApi();
final id = 56; // int | Project ID
final webhookID = 56; // int | Webhook ID

try {
    final result = api_instance.projectsIdWebhooksWebhookIDPost(id, webhookID);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->projectsIdWebhooksWebhookIDPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project ID | 
 **webhookID** | **int**| Webhook ID | 

### Return type

[**ModelsWebhook**](ModelsWebhook.md)

### Authorization

[JWTKeyAuth](../README.md#JWTKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhooksEventsGet**
> List<String> webhooksEventsGet()

Get all possible webhook events

Get all possible webhook events to use when creating or updating a webhook target.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';
// TODO Configure API key authorization: JWTKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('JWTKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = WebhooksApi();

try {
    final result = api_instance.webhooksEventsGet();
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->webhooksEventsGet: $e\n');
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

