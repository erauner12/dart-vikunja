//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SharingApi {
  SharingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Mark all notifications of a user as read
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> notificationsPostWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/notifications';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Mark all notifications of a user as read
  Future<ModelsMessage?> notificationsPost() async {
    final response = await notificationsPostWithHttpInfo();
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

  /// Get teams on a project
  ///
  /// Returns a project with all teams which have access on a given project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search teams by its name.
  Future<Response> projectsIdTeamsGetWithHttpInfo(int id, { int? page, int? perPage, String? s, }) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/teams'
      .replaceAll('{id}', id.toString());

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

  /// Get teams on a project
  ///
  /// Returns a project with all teams which have access on a given project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search teams by its name.
  Future<List<ModelsTeamWithRight>?> projectsIdTeamsGet(int id, { int? page, int? perPage, String? s, }) async {
    final response = await projectsIdTeamsGetWithHttpInfo(id,  page: page, perPage: perPage, s: s, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsTeamWithRight>') as List)
        .cast<ModelsTeamWithRight>()
        .toList(growable: false);

    }
    return null;
  }

  /// Add a team to a project
  ///
  /// Gives a team access to a project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [ModelsTeamProject] project (required):
  ///   The team you want to add to the project.
  Future<Response> projectsIdTeamsPutWithHttpInfo(int id, ModelsTeamProject project,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/teams'
      .replaceAll('{id}', id.toString());

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

  /// Add a team to a project
  ///
  /// Gives a team access to a project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [ModelsTeamProject] project (required):
  ///   The team you want to add to the project.
  Future<ModelsTeamProject?> projectsIdTeamsPut(int id, ModelsTeamProject project,) async {
    final response = await projectsIdTeamsPutWithHttpInfo(id, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsTeamProject',) as ModelsTeamProject;
    
    }
    return null;
  }

  /// Get users on a project
  ///
  /// Returns a project with all users which have access on a given project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search users by its name.
  Future<Response> projectsIdUsersGetWithHttpInfo(int id, { int? page, int? perPage, String? s, }) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/users'
      .replaceAll('{id}', id.toString());

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

  /// Get users on a project
  ///
  /// Returns a project with all users which have access on a given project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search users by its name.
  Future<List<ModelsUserWithRight>?> projectsIdUsersGet(int id, { int? page, int? perPage, String? s, }) async {
    final response = await projectsIdUsersGetWithHttpInfo(id,  page: page, perPage: perPage, s: s, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsUserWithRight>') as List)
        .cast<ModelsUserWithRight>()
        .toList(growable: false);

    }
    return null;
  }

  /// Add a user to a project
  ///
  /// Gives a user access to a project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [ModelsProjectUser] project (required):
  ///   The user you want to add to the project.
  Future<Response> projectsIdUsersPutWithHttpInfo(int id, ModelsProjectUser project,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/users'
      .replaceAll('{id}', id.toString());

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

  /// Add a user to a project
  ///
  /// Gives a user access to a project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [ModelsProjectUser] project (required):
  ///   The user you want to add to the project.
  Future<ModelsProjectUser?> projectsIdUsersPut(int id, ModelsProjectUser project,) async {
    final response = await projectsIdUsersPutWithHttpInfo(id, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProjectUser',) as ModelsProjectUser;
    
    }
    return null;
  }

  /// Delete a team from a project
  ///
  /// Delets a team from a project. The team won't have access to the project anymore.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project ID
  ///
  /// * [int] teamID (required):
  ///   Team ID
  Future<Response> projectsProjectIDTeamsTeamIDDeleteWithHttpInfo(int projectID, int teamID,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{projectID}/teams/{teamID}'
      .replaceAll('{projectID}', projectID.toString())
      .replaceAll('{teamID}', teamID.toString());

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

  /// Delete a team from a project
  ///
  /// Delets a team from a project. The team won't have access to the project anymore.
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project ID
  ///
  /// * [int] teamID (required):
  ///   Team ID
  Future<ModelsMessage?> projectsProjectIDTeamsTeamIDDelete(int projectID, int teamID,) async {
    final response = await projectsProjectIDTeamsTeamIDDeleteWithHttpInfo(projectID, teamID,);
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

  /// Update a team <-> project relation
  ///
  /// Update a team <-> project relation. Mostly used to update the right that team has.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project ID
  ///
  /// * [int] teamID (required):
  ///   Team ID
  ///
  /// * [ModelsTeamProject] project (required):
  ///   The team you want to update.
  Future<Response> projectsProjectIDTeamsTeamIDPostWithHttpInfo(int projectID, int teamID, ModelsTeamProject project,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{projectID}/teams/{teamID}'
      .replaceAll('{projectID}', projectID.toString())
      .replaceAll('{teamID}', teamID.toString());

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

  /// Update a team <-> project relation
  ///
  /// Update a team <-> project relation. Mostly used to update the right that team has.
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project ID
  ///
  /// * [int] teamID (required):
  ///   Team ID
  ///
  /// * [ModelsTeamProject] project (required):
  ///   The team you want to update.
  Future<ModelsTeamProject?> projectsProjectIDTeamsTeamIDPost(int projectID, int teamID, ModelsTeamProject project,) async {
    final response = await projectsProjectIDTeamsTeamIDPostWithHttpInfo(projectID, teamID, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsTeamProject',) as ModelsTeamProject;
    
    }
    return null;
  }

  /// Delete a user from a project
  ///
  /// Delets a user from a project. The user won't have access to the project anymore.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project ID
  ///
  /// * [int] userID (required):
  ///   User ID
  Future<Response> projectsProjectIDUsersUserIDDeleteWithHttpInfo(int projectID, int userID,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{projectID}/users/{userID}'
      .replaceAll('{projectID}', projectID.toString())
      .replaceAll('{userID}', userID.toString());

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

  /// Delete a user from a project
  ///
  /// Delets a user from a project. The user won't have access to the project anymore.
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project ID
  ///
  /// * [int] userID (required):
  ///   User ID
  Future<ModelsMessage?> projectsProjectIDUsersUserIDDelete(int projectID, int userID,) async {
    final response = await projectsProjectIDUsersUserIDDeleteWithHttpInfo(projectID, userID,);
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

  /// Update a user <-> project relation
  ///
  /// Update a user <-> project relation. Mostly used to update the right that user has.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project ID
  ///
  /// * [int] userID (required):
  ///   User ID
  ///
  /// * [ModelsProjectUser] project (required):
  ///   The user you want to update.
  Future<Response> projectsProjectIDUsersUserIDPostWithHttpInfo(int projectID, int userID, ModelsProjectUser project,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{projectID}/users/{userID}'
      .replaceAll('{projectID}', projectID.toString())
      .replaceAll('{userID}', userID.toString());

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

  /// Update a user <-> project relation
  ///
  /// Update a user <-> project relation. Mostly used to update the right that user has.
  ///
  /// Parameters:
  ///
  /// * [int] projectID (required):
  ///   Project ID
  ///
  /// * [int] userID (required):
  ///   User ID
  ///
  /// * [ModelsProjectUser] project (required):
  ///   The user you want to update.
  Future<ModelsProjectUser?> projectsProjectIDUsersUserIDPost(int projectID, int userID, ModelsProjectUser project,) async {
    final response = await projectsProjectIDUsersUserIDPostWithHttpInfo(projectID, userID, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsProjectUser',) as ModelsProjectUser;
    
    }
    return null;
  }

  /// Get all link shares for a project
  ///
  /// Returns all link shares which exist for a given project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search shares by hash.
  Future<Response> projectsProjectSharesGetWithHttpInfo(int project, { int? page, int? perPage, String? s, }) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/shares'
      .replaceAll('{project}', project.toString());

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

  /// Get all link shares for a project
  ///
  /// Returns all link shares which exist for a given project
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search shares by hash.
  Future<List<ModelsLinkSharing>?> projectsProjectSharesGet(int project, { int? page, int? perPage, String? s, }) async {
    final response = await projectsProjectSharesGetWithHttpInfo(project,  page: page, perPage: perPage, s: s, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsLinkSharing>') as List)
        .cast<ModelsLinkSharing>()
        .toList(growable: false);

    }
    return null;
  }

  /// Share a project via link
  ///
  /// Share a project via link. The user needs to have write-access to the project to be able do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [ModelsLinkSharing] label (required):
  ///   The new link share object
  Future<Response> projectsProjectSharesPutWithHttpInfo(int project, ModelsLinkSharing label,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/shares'
      .replaceAll('{project}', project.toString());

    // ignore: prefer_final_locals
    Object? postBody = label;

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

  /// Share a project via link
  ///
  /// Share a project via link. The user needs to have write-access to the project to be able do this.
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [ModelsLinkSharing] label (required):
  ///   The new link share object
  Future<ModelsLinkSharing?> projectsProjectSharesPut(int project, ModelsLinkSharing label,) async {
    final response = await projectsProjectSharesPutWithHttpInfo(project, label,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsLinkSharing',) as ModelsLinkSharing;
    
    }
    return null;
  }

  /// Remove a link share
  ///
  /// Remove a link share. The user needs to have write-access to the project to be able do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] share (required):
  ///   Share Link ID
  Future<Response> projectsProjectSharesShareDeleteWithHttpInfo(int project, int share,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/shares/{share}'
      .replaceAll('{project}', project.toString())
      .replaceAll('{share}', share.toString());

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

  /// Remove a link share
  ///
  /// Remove a link share. The user needs to have write-access to the project to be able do this.
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] share (required):
  ///   Share Link ID
  Future<ModelsMessage?> projectsProjectSharesShareDelete(int project, int share,) async {
    final response = await projectsProjectSharesShareDeleteWithHttpInfo(project, share,);
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

  /// Get one link shares for a project
  ///
  /// Returns one link share by its ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] share (required):
  ///   Share ID
  Future<Response> projectsProjectSharesShareGetWithHttpInfo(int project, int share,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/shares/{share}'
      .replaceAll('{project}', project.toString())
      .replaceAll('{share}', share.toString());

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

  /// Get one link shares for a project
  ///
  /// Returns one link share by its ID.
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] share (required):
  ///   Share ID
  Future<ModelsLinkSharing?> projectsProjectSharesShareGet(int project, int share,) async {
    final response = await projectsProjectSharesShareGetWithHttpInfo(project, share,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsLinkSharing',) as ModelsLinkSharing;
    
    }
    return null;
  }

  /// Get an auth token for a share
  ///
  /// Get a jwt auth token for a shared project from a share hash.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] share (required):
  ///   The share hash
  ///
  /// * [V1LinkShareAuth] password (required):
  ///   The password for link shares which require one.
  Future<Response> sharesShareAuthPostWithHttpInfo(String share, V1LinkShareAuth password,) async {
    // ignore: prefer_const_declarations
    final path = r'/shares/{share}/auth'
      .replaceAll('{share}', share);

    // ignore: prefer_final_locals
    Object? postBody = password;

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

  /// Get an auth token for a share
  ///
  /// Get a jwt auth token for a shared project from a share hash.
  ///
  /// Parameters:
  ///
  /// * [String] share (required):
  ///   The share hash
  ///
  /// * [V1LinkShareAuth] password (required):
  ///   The password for link shares which require one.
  Future<AuthToken?> sharesShareAuthPost(String share, V1LinkShareAuth password,) async {
    final response = await sharesShareAuthPostWithHttpInfo(share, password,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthToken',) as AuthToken;
    
    }
    return null;
  }
}
