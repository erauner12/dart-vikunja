# vikunja_flutter_api.model.ModelsDatabaseNotifications

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | A timestamp when this notification was created. You cannot change this value. | [optional] 
**id** | **int** | The unique, numeric id of this notification. | [optional] 
**name** | **String** | The name of the notification | [optional] 
**notification** | [**Object**](.md) | The actual content of the notification. | [optional] 
**read** | **bool** | Whether or not to mark this notification as read or unread. True is read, false is unread. | [optional] 
**readAt** | **String** | When this notification is marked as read, this will be updated with the current timestamp. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


