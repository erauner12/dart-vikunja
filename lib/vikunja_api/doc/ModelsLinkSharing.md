# vikunja_flutter_api.model.ModelsLinkSharing

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | A timestamp when this project was shared. You cannot change this value. | [optional] 
**hash** | **String** | The public id to get this shared project | [optional] 
**id** | **int** | The ID of the shared thing | [optional] 
**name** | **String** | The name of this link share. All actions someone takes while being authenticated with that link will appear with that name. | [optional] 
**password** | **String** | The password of this link share. You can only set it, not retrieve it after the link share has been created. | [optional] 
**right** | [**ModelsRight**](ModelsRight.md) | The right this project is shared with. 0 = Read only, 1 = Read & Write, 2 = Admin. See the docs for more details. | [optional] 
**sharedBy** | [**UserUser**](UserUser.md) | The user who shared this project | [optional] 
**sharingType** | [**ModelsSharingType**](ModelsSharingType.md) | The kind of this link. 0 = undefined, 1 = without password, 2 = with password. | [optional] 
**updated** | **String** | A timestamp when this share was last updated. You cannot change this value. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


