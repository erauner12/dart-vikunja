# vikunja_flutter_api.api.ServiceApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**infoGet**](ServiceApi.md#infoget) | **GET** /info | Info


# **infoGet**
> V1VikunjaInfos infoGet()

Info

Returns the version, frontendurl, motd and various settings of Vikunja

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = ServiceApi();

try {
    final result = api_instance.infoGet();
    print(result);
} catch (e) {
    print('Exception when calling ServiceApi->infoGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1VikunjaInfos**](V1VikunjaInfos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

