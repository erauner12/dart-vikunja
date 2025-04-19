//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProjectApi {
  ProjectApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get an unsplash image
  ///
  /// Get an unsplash image. **Returns json on error.**
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] image (required):
  ///   Unsplash Image ID
  Future<Response> backgroundsUnsplashImageImageGetWithHttpInfo(int image,) async {
    // ignore: prefer_const_declarations
    final path = r'/backgrounds/unsplash/image/{image}'
      .replaceAll('{image}', image.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get an unsplash image
  ///
  /// Get an unsplash image. **Returns json on error.**
  ///
  /// Parameters:
  ///
  /// * [int] image (required):
  ///   Unsplash Image ID
  Future<MultipartFile?> backgroundsUnsplashImageImageGet(int image,) async {
    final response = await backgroundsUnsplashImageImageGetWithHttpInfo(image,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get an unsplash thumbnail image
  ///
  /// Get an unsplash thumbnail image. The thumbnail is cropped to a max width of 200px. **Returns json on error.**
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] image (required):
  ///   Unsplash Image ID
  Future<Response> backgroundsUnsplashImageImageThumbGetWithHttpInfo(int image,) async {
    // ignore: prefer_const_declarations
    final path = r'/backgrounds/unsplash/image/{image}/thumb'
      .replaceAll('{image}', image.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get an unsplash thumbnail image
  ///
  /// Get an unsplash thumbnail image. The thumbnail is cropped to a max width of 200px. **Returns json on error.**
  ///
  /// Parameters:
  ///
  /// * [int] image (required):
  ///   Unsplash Image ID
  Future<MultipartFile?> backgroundsUnsplashImageImageThumbGet(int image,) async {
    final response = await backgroundsUnsplashImageImageThumbGetWithHttpInfo(image,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Search for a background from unsplash
  ///
  /// Search for a project background from unsplash
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] s:
  ///   Search backgrounds from unsplash with this search term.
  ///
  /// * [int] p:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  Future<Response> backgroundsUnsplashSearchGetWithHttpInfo({ String? s, int? p, }) async {
    // ignore: prefer_const_declarations
    final path = r'/backgrounds/unsplash/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (s != null) {
      queryParams.addAll(_queryParams('', 's', s));
    }
    if (p != null) {
      queryParams.addAll(_queryParams('', 'p', p));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search for a background from unsplash
  ///
  /// Search for a project background from unsplash
  ///
  /// Parameters:
  ///
  /// * [String] s:
  ///   Search backgrounds from unsplash with this search term.
  ///
  /// * [int] p:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  Future<List<BackgroundImage>?> backgroundsUnsplashSearchGet({ String? s, int? p, }) async {
    final response = await backgroundsUnsplashSearchGetWithHttpInfo( s: s, p: p, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BackgroundImage>') as List)
        .cast<BackgroundImage>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get all projects a user has access to
  ///
  /// Returns all projects a user has access to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search projects by title.
  ///
  /// * [bool] isArchived:
  ///   If true, also returns all archived projects.
  Future<Response> projectsGetWithHttpInfo({ int? page, int? perPage, String? s, bool? isArchived, }) async {
    // ignore: prefer_const_declarations
    final path = r'/projects';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (s != null) {
      queryParams.addAll(_queryParams('', 's', s));
    }
    if (isArchived != null) {
      queryParams.addAll(_queryParams('', 'is_archived', isArchived));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all projects a user has access to
  ///
  /// Returns all projects a user has access to.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search projects by title.
  ///
  /// * [bool] isArchived:
  ///   If true, also returns all archived projects.
  Future<List<ModelsProject>?> projectsGet({ int? page, int? perPage, String? s, bool? isArchived, }) async {
    final response = await projectsGetWithHttpInfo( page: page, perPage: perPage, s: s, isArchived: isArchived, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsProject>') as List)
        .cast<ModelsProject>()
        .toList(growable: false);

    }
    return null;
  }

  /// Remove a project background
  ///
  /// Removes a previously set project background, regardless of the project provider used to set the background. It does not throw an error if the project does not have a background.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  Future<Response> projectsIdBackgroundDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/background'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove a project background
  ///
  /// Removes a previously set project background, regardless of the project provider used to set the background. It does not throw an error if the project does not have a background.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  Future<ModelsProject?> projectsIdBackgroundDelete(int id,) async {
    final response = await projectsIdBackgroundDeleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProject',) as ModelsProject;
    
    }
    return null;
  }

  /// Get the project background
  ///
  /// Get the project background of a specific project. **Returns json on error.**
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  Future<Response> projectsIdBackgroundGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/background'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the project background
  ///
  /// Get the project background of a specific project. **Returns json on error.**
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  Future<MultipartFile?> projectsIdBackgroundGet(int id,) async {
    final response = await projectsIdBackgroundGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Set an unsplash photo as project background
  ///
  /// Sets a photo from unsplash as project background.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [BackgroundImage] project (required):
  ///   The image you want to set as background
  Future<Response> projectsIdBackgroundsUnsplashPostWithHttpInfo(int id, BackgroundImage project,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/backgrounds/unsplash'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = project;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Set an unsplash photo as project background
  ///
  /// Sets a photo from unsplash as project background.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [BackgroundImage] project (required):
  ///   The image you want to set as background
  Future<ModelsProject?> projectsIdBackgroundsUnsplashPost(int id, BackgroundImage project,) async {
    final response = await projectsIdBackgroundsUnsplashPostWithHttpInfo(id, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProject',) as ModelsProject;
    
    }
    return null;
  }

  /// Upload a project background
  ///
  /// Upload a project background.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [String] background (required):
  ///   The file as single file.
  Future<Response> projectsIdBackgroundsUploadPutWithHttpInfo(int id, String background,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/backgrounds/upload'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('PUT', Uri.parse(path));
    if (background != null) {
      hasFields = true;
      mp.fields[r'background'] = parameterToString(background);
    }
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Upload a project background
  ///
  /// Upload a project background.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [String] background (required):
  ///   The file as single file.
  Future<ModelsMessage?> projectsIdBackgroundsUploadPut(int id, String background,) async {
    final response = await projectsIdBackgroundsUploadPutWithHttpInfo(id, background,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsMessage',) as ModelsMessage;
    
    }
    return null;
  }

  /// Deletes a project
  ///
  /// Delets a project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  Future<Response> projectsIdDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes a project
  ///
  /// Delets a project
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  Future<ModelsMessage?> projectsIdDelete(int id,) async {
    final response = await projectsIdDeleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsMessage',) as ModelsMessage;
    
    }
    return null;
  }

  /// Gets one project
  ///
  /// Returns a project by its ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  Future<Response> projectsIdGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Gets one project
  ///
  /// Returns a project by its ID.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  Future<ModelsProject?> projectsIdGet(int id,) async {
    final response = await projectsIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProject',) as ModelsProject;
    
    }
    return null;
  }

  /// Updates a project
  ///
  /// Updates a project. This does not include adding a task (see below).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [ModelsProject] project (required):
  ///   The project with updated values you want to update.
  Future<Response> projectsIdPostWithHttpInfo(int id, ModelsProject project,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = project;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates a project
  ///
  /// Updates a project. This does not include adding a task (see below).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [ModelsProject] project (required):
  ///   The project with updated values you want to update.
  Future<ModelsProject?> projectsIdPost(int id, ModelsProject project,) async {
    final response = await projectsIdPostWithHttpInfo(id, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProject',) as ModelsProject;
    
    }
    return null;
  }

  /// Get users
  ///
  /// Lists all users (without emailadresses). Also possible to search for a specific user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [String] s:
  ///   Search for a user by its name.
  Future<Response> projectsIdProjectusersGetWithHttpInfo(int id, { String? s, }) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/projectusers'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (s != null) {
      queryParams.addAll(_queryParams('', 's', s));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get users
  ///
  /// Lists all users (without emailadresses). Also possible to search for a specific user.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [String] s:
  ///   Search for a user by its name.
  Future<List<UserUser>?> projectsIdProjectusersGet(int id, { String? s, }) async {
    final response = await projectsIdProjectusersGetWithHttpInfo(id,  s: s, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserUser>') as List)
        .cast<UserUser>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get all kanban buckets of a project
  ///
  /// Returns all kanban buckets which belong to that project. Buckets are always sorted by their `position` in ascending order. To get all buckets with their tasks, use the tasks endpoint with a kanban view.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [int] view (required):
  ///   Project view ID
  Future<Response> projectsIdViewsViewBucketsGetWithHttpInfo(int id, int view,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/views/{view}/buckets'
      .replaceAll('{id}', id.toString())
      .replaceAll('{view}', view.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all kanban buckets of a project
  ///
  /// Returns all kanban buckets which belong to that project. Buckets are always sorted by their `position` in ascending order. To get all buckets with their tasks, use the tasks endpoint with a kanban view.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [int] view (required):
  ///   Project view ID
  Future<List<ModelsBucket>?> projectsIdViewsViewBucketsGet(int id, int view,) async {
    final response = await projectsIdViewsViewBucketsGetWithHttpInfo(id, view,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsBucket>') as List)
        .cast<ModelsBucket>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create a new bucket
  ///
  /// Creates a new kanban bucket on a project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project Id
  ///
  /// * [int] view (required):
  ///   Project view ID
  ///
  /// * [ModelsBucket] bucket (required):
  ///   The bucket object
  Future<Response> projectsIdViewsViewBucketsPutWithHttpInfo(int id, int view, ModelsBucket bucket,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/views/{view}/buckets'
      .replaceAll('{id}', id.toString())
      .replaceAll('{view}', view.toString());

    // ignore: prefer_final_locals
    Object? postBody = bucket;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a new bucket
  ///
  /// Creates a new kanban bucket on a project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project Id
  ///
  /// * [int] view (required):
  ///   Project view ID
  ///
  /// * [ModelsBucket] bucket (required):
  ///   The bucket object
  Future<ModelsBucket?> projectsIdViewsViewBucketsPut(int id, int view, ModelsBucket bucket,) async {
    final response = await projectsIdViewsViewBucketsPutWithHttpInfo(id, view, bucket,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsBucket',) as ModelsBucket;
    
    }
    return null;
  }

  /// Duplicate an existing project
  ///
  /// Copies the project, tasks, files, kanban data, assignees, comments, attachments, lables, relations, backgrounds, user/team rights and link shares from one project to a new one. The user needs read access in the project and write access in the parent of the new project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   The project ID to duplicate
  ///
  /// * [ModelsProjectDuplicate] project (required):
  ///   The target parent project which should hold the copied project.
  Future<Response> projectsProjectIDDuplicatePutWithHttpInfo(int projectID, ModelsProjectDuplicate project,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{projectID}/duplicate'
      .replaceAll('{projectID}', projectID.toString());

    // ignore: prefer_final_locals
    Object? postBody = project;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Duplicate an existing project
  ///
  /// Copies the project, tasks, files, kanban data, assignees, comments, attachments, lables, relations, backgrounds, user/team rights and link shares from one project to a new one. The user needs read access in the project and write access in the parent of the new project.
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   The project ID to duplicate
  ///
  /// * [ModelsProjectDuplicate] project (required):
  ///   The target parent project which should hold the copied project.
  Future<ModelsProjectDuplicate?> projectsProjectIDDuplicatePut(int projectID, ModelsProjectDuplicate project,) async {
    final response = await projectsProjectIDDuplicatePutWithHttpInfo(projectID, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProjectDuplicate',) as ModelsProjectDuplicate;
    
    }
    return null;
  }

  /// Deletes an existing bucket
  ///
  /// Deletes an existing kanban bucket and dissociates all of its task. It does not delete any tasks. You cannot delete the last bucket on a project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project Id
  ///
  /// * [int] bucketID (required):
  ///   Bucket Id
  ///
  /// * [int] view (required):
  ///   Project view ID
  Future<Response> projectsProjectIDViewsViewBucketsBucketIDDeleteWithHttpInfo(int projectID, int bucketID, int view,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{projectID}/views/{view}/buckets/{bucketID}'
      .replaceAll('{projectID}', projectID.toString())
      .replaceAll('{bucketID}', bucketID.toString())
      .replaceAll('{view}', view.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes an existing bucket
  ///
  /// Deletes an existing kanban bucket and dissociates all of its task. It does not delete any tasks. You cannot delete the last bucket on a project.
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project Id
  ///
  /// * [int] bucketID (required):
  ///   Bucket Id
  ///
  /// * [int] view (required):
  ///   Project view ID
  Future<ModelsMessage?> projectsProjectIDViewsViewBucketsBucketIDDelete(int projectID, int bucketID, int view,) async {
    final response = await projectsProjectIDViewsViewBucketsBucketIDDeleteWithHttpInfo(projectID, bucketID, view,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsMessage',) as ModelsMessage;
    
    }
    return null;
  }

  /// Update an existing bucket
  ///
  /// Updates an existing kanban bucket.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project Id
  ///
  /// * [int] bucketID (required):
  ///   Bucket Id
  ///
  /// * [int] view (required):
  ///   Project view ID
  ///
  /// * [ModelsBucket] bucket (required):
  ///   The bucket object
  Future<Response> projectsProjectIDViewsViewBucketsBucketIDPostWithHttpInfo(int projectID, int bucketID, int view, ModelsBucket bucket,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{projectID}/views/{view}/buckets/{bucketID}'
      .replaceAll('{projectID}', projectID.toString())
      .replaceAll('{bucketID}', bucketID.toString())
      .replaceAll('{view}', view.toString());

    // ignore: prefer_final_locals
    Object? postBody = bucket;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an existing bucket
  ///
  /// Updates an existing kanban bucket.
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project Id
  ///
  /// * [int] bucketID (required):
  ///   Bucket Id
  ///
  /// * [int] view (required):
  ///   Project view ID
  ///
  /// * [ModelsBucket] bucket (required):
  ///   The bucket object
  Future<ModelsBucket?> projectsProjectIDViewsViewBucketsBucketIDPost(int projectID, int bucketID, int view, ModelsBucket bucket,) async {
    final response = await projectsProjectIDViewsViewBucketsBucketIDPostWithHttpInfo(projectID, bucketID, view, bucket,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsBucket',) as ModelsBucket;
    
    }
    return null;
  }

  /// Get all project views for a project
  ///
  /// Returns all project views for a sepcific project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  Future<Response> projectsProjectViewsGetWithHttpInfo(int project,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/views'
      .replaceAll('{project}', project.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all project views for a project
  ///
  /// Returns all project views for a sepcific project
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  Future<List<ModelsProjectView>?> projectsProjectViewsGet(int project,) async {
    final response = await projectsProjectViewsGetWithHttpInfo(project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsProjectView>') as List)
        .cast<ModelsProjectView>()
        .toList(growable: false);

    }
    return null;
  }

  /// Delete a project view
  ///
  /// Deletes a project view.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] id (required):
  ///   Project View ID
  Future<Response> projectsProjectViewsIdDeleteWithHttpInfo(int project, int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/views/{id}'
      .replaceAll('{project}', project.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a project view
  ///
  /// Deletes a project view.
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] id (required):
  ///   Project View ID
  Future<ModelsMessage?> projectsProjectViewsIdDelete(int project, int id,) async {
    final response = await projectsProjectViewsIdDeleteWithHttpInfo(project, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsMessage',) as ModelsMessage;
    
    }
    return null;
  }

  /// Get one project view
  ///
  /// Returns a project view by its ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] id (required):
  ///   Project View ID
  Future<Response> projectsProjectViewsIdGetWithHttpInfo(int project, int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/views/{id}'
      .replaceAll('{project}', project.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get one project view
  ///
  /// Returns a project view by its ID.
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] id (required):
  ///   Project View ID
  Future<ModelsProjectView?> projectsProjectViewsIdGet(int project, int id,) async {
    final response = await projectsProjectViewsIdGetWithHttpInfo(project, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProjectView',) as ModelsProjectView;
    
    }
    return null;
  }

  /// Updates a project view
  ///
  /// Updates a project view.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] id (required):
  ///   Project View ID
  ///
  /// * [ModelsProjectView] view (required):
  ///   The project view with updated values you want to change.
  Future<Response> projectsProjectViewsIdPostWithHttpInfo(int project, int id, ModelsProjectView view,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/views/{id}'
      .replaceAll('{project}', project.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = view;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates a project view
  ///
  /// Updates a project view.
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] id (required):
  ///   Project View ID
  ///
  /// * [ModelsProjectView] view (required):
  ///   The project view with updated values you want to change.
  Future<ModelsProjectView?> projectsProjectViewsIdPost(int project, int id, ModelsProjectView view,) async {
    final response = await projectsProjectViewsIdPostWithHttpInfo(project, id, view,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProjectView',) as ModelsProjectView;
    
    }
    return null;
  }

  /// Create a project view
  ///
  /// Create a project view in a specific project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [ModelsProjectView] view (required):
  ///   The project view you want to create.
  Future<Response> projectsProjectViewsPutWithHttpInfo(int project, ModelsProjectView view,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/views'
      .replaceAll('{project}', project.toString());

    // ignore: prefer_final_locals
    Object? postBody = view;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a project view
  ///
  /// Create a project view in a specific project.
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [ModelsProjectView] view (required):
  ///   The project view you want to create.
  Future<ModelsProjectView?> projectsProjectViewsPut(int project, ModelsProjectView view,) async {
    final response = await projectsProjectViewsPutWithHttpInfo(project, view,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProjectView',) as ModelsProjectView;
    
    }
    return null;
  }

  /// Creates a new project
  ///
  /// Creates a new project. If a parent project is provided the user needs to have write access to that project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ModelsProject] project (required):
  ///   The project you want to create.
  Future<Response> projectsPutWithHttpInfo(ModelsProject project,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects';

    // ignore: prefer_final_locals
    Object? postBody = project;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a new project
  ///
  /// Creates a new project. If a parent project is provided the user needs to have write access to that project.
  ///
  /// Parameters:
  ///
  /// * [ModelsProject] project (required):
  ///   The project you want to create.
  Future<ModelsProject?> projectsPut(ModelsProject project,) async {
    final response = await projectsPutWithHttpInfo(project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProject',) as ModelsProject;
    
    }
    return null;
  }
}
