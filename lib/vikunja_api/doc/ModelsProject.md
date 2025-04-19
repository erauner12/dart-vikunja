# vikunja_flutter_api.model.ModelsProject

## Load the model package
```dart
import 'package:vikunja_flutter_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backgroundBlurHash** | **String** | Contains a very small version of the project background to use as a blurry preview until the actual background is loaded. Check out https://blurha.sh/ to learn how it works. | [optional] 
**backgroundInformation** | [**Object**](.md) | Holds extra information about the background set since some background providers require attribution or similar. If not null, the background can be accessed at /projects/{projectID}/background | [optional] 
**created** | **String** | A timestamp when this project was created. You cannot change this value. | [optional] 
**description** | **String** | The description of the project. | [optional] 
**hexColor** | **String** | The hex color of this project | [optional] 
**id** | **int** | The unique, numeric id of this project. | [optional] 
**identifier** | **String** | The unique project short identifier. Used to build task identifiers. | [optional] 
**isArchived** | **bool** | Whether a project is archived. | [optional] 
**isFavorite** | **bool** | True if a project is a favorite. Favorite projects show up in a separate parent project. This value depends on the user making the call to the api. | [optional] 
**owner** | [**UserUser**](UserUser.md) | The user who created this project. | [optional] 
**parentProjectId** | **int** |  | [optional] 
**position** | **num** | The position this project has when querying all projects. See the tasks.position property on how to use this. | [optional] 
**subscription** | [**ModelsSubscription**](ModelsSubscription.md) | The subscription status for the user reading this project. You can only read this property, use the subscription endpoints to modify it. Will only returned when retreiving one project. | [optional] 
**title** | **String** | The title of the project. You'll see this in the overview. | [optional] 
**updated** | **String** | A timestamp when this project was last updated. You cannot change this value. | [optional] 
**views** | [**List<ModelsProjectView>**](ModelsProjectView.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


