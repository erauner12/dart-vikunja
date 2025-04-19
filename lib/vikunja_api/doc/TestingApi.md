# vikunja_flutter_api.api.TestingApi

## Load the API package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testTablePatch**](TestingApi.md#testtablepatch) | **PATCH** /test/{table} | Reset the db to a defined state


# **testTablePatch**
> List<UserUser> testTablePatch(table)

Reset the db to a defined state

Fills the specified table with the content provided in the payload. You need to enable the testing endpoint before doing this and provide the `Authorization: <token>` secret when making requests to this endpoint. See docs for more details.

### Example
```dart
import 'package:vikunja_flutter_api/api.dart';

final api_instance = TestingApi();
final table = table_example; // String | The table to reset

try {
    final result = api_instance.testTablePatch(table);
    print(result);
} catch (e) {
    print('Exception when calling TestingApi->testTablePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| The table to reset | 

### Return type

[**List<UserUser>**](UserUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

