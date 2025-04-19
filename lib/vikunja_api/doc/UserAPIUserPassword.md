# vikunja_flutter_api.model.UserAPIUserPassword

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | The user's email address | [optional] 
**id** | **int** | The unique, numeric id of this user. | [optional] 
**password** | **String** | The user's password in clear text. Only used when registering the user. The maximum limi is 72 bytes, which may be less than 72 characters. This is due to the limit in the bcrypt hashing algorithm used to store passwords in Vikunja. | [optional] 
**username** | **String** | The user's username. Cannot contain anything that looks like an url or whitespaces. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


