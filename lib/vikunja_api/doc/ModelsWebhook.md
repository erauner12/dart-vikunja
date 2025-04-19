# vikunja_flutter_api.model.ModelsWebhook

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | A timestamp when this webhook target was created. You cannot change this value. | [optional] 
**createdBy** | [**UserUser**](UserUser.md) | The user who initially created the webhook target. | [optional] 
**events** | **List<String>** | The webhook events which should fire this webhook target | [optional] [default to const []]
**id** | **int** | The generated ID of this webhook target | [optional] 
**projectId** | **int** | The project ID of the project this webhook target belongs to | [optional] 
**secret** | **String** | If provided, webhook requests will be signed using HMAC. Check out the docs about how to use this: https://vikunja.io/docs/webhooks/#signing | [optional] 
**targetUrl** | **String** | The target URL where the POST request with the webhook payload will be made | [optional] 
**updated** | **String** | A timestamp when this webhook target was last updated. You cannot change this value. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


