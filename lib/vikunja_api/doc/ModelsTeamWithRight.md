# vikunja_flutter_api.model.ModelsTeamWithRight

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | A timestamp when this relation was created. You cannot change this value. | [optional] 
**createdBy** | [**UserUser**](UserUser.md) | The user who created this team. | [optional] 
**description** | **String** | The team's description. | [optional] 
**id** | **int** | The unique, numeric id of this team. | [optional] 
**includePublic** | **bool** | Query parameter controlling whether to include public projects or not | [optional] 
**isPublic** | **bool** | Defines wether the team should be publicly discoverable when sharing a project | [optional] 
**members** | [**List<ModelsTeamUser>**](ModelsTeamUser.md) | An array of all members in this team. | [optional] [default to const []]
**name** | **String** | The name of this team. | [optional] 
**oidcId** | **String** | The team's oidc id delivered by the oidc provider | [optional] 
**right** | [**ModelsRight**](ModelsRight.md) |  | [optional] 
**updated** | **String** | A timestamp when this relation was last updated. You cannot change this value. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


