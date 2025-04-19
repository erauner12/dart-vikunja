# vikunja_flutter_api.model.UserLogin

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**longToken** | **bool** | If true, the token returned will be valid a lot longer than default. Useful for \"remember me\" style logins. | [optional] 
**password** | **String** | The password for the user. | [optional] 
**totpPasscode** | **String** | The totp passcode of a user. Only needs to be provided when enabled. | [optional] 
**username** | **String** | The username used to log in. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


