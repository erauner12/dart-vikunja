//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AssigneesApi {
  AssigneesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add multiple new assignees to a task
  ///
  /// Adds multiple new assignees to a task. The assignee needs to have access to the project, the doer must be able to edit this task. Every user not in the project will be unassigned from the task, pass an empty array to unassign everyone.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [ModelsBulkAssignees] assignee (required):
  ///   The array of assignees
  Future<Response> tasksTaskIDAssigneesBulkPostWithHttpInfo(int taskID, ModelsBulkAssignees assignee,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/assignees/bulk'
      .replaceAll('{taskID}', taskID.toString());

    // ignore: prefer_final_locals
    Object? postBody = assignee;

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

  /// Add multiple new assignees to a task
  ///
  /// Adds multiple new assignees to a task. The assignee needs to have access to the project, the doer must be able to edit this task. Every user not in the project will be unassigned from the task, pass an empty array to unassign everyone.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [ModelsBulkAssignees] assignee (required):
  ///   The array of assignees
  Future<ModelsTaskAssginee?> tasksTaskIDAssigneesBulkPost(int taskID, ModelsBulkAssignees assignee,) async {
    final response = await tasksTaskIDAssigneesBulkPostWithHttpInfo(taskID, assignee,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsTaskAssginee',) as ModelsTaskAssginee;
    
    }
    return null;
  }

  /// Get all assignees for a task
  ///
  /// Returns an array with all assignees for this task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search assignees by their username.
  Future<Response> tasksTaskIDAssigneesGetWithHttpInfo(int taskID, { int? page, int? perPage, String? s, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/assignees'
      .replaceAll('{taskID}', taskID.toString());

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

  /// Get all assignees for a task
  ///
  /// Returns an array with all assignees for this task.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search assignees by their username.
  Future<List<UserUser>?> tasksTaskIDAssigneesGet(int taskID, { int? page, int? perPage, String? s, }) async {
    final response = await tasksTaskIDAssigneesGetWithHttpInfo(taskID,  page: page, perPage: perPage, s: s, );
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

  /// Add a new assignee to a task
  ///
  /// Adds a new assignee to a task. The assignee needs to have access to the project, the doer must be able to edit this task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [ModelsTaskAssginee] assignee (required):
  ///   The assingee object
  Future<Response> tasksTaskIDAssigneesPutWithHttpInfo(int taskID, ModelsTaskAssginee assignee,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/assignees'
      .replaceAll('{taskID}', taskID.toString());

    // ignore: prefer_final_locals
    Object? postBody = assignee;

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

  /// Add a new assignee to a task
  ///
  /// Adds a new assignee to a task. The assignee needs to have access to the project, the doer must be able to edit this task.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [ModelsTaskAssginee] assignee (required):
  ///   The assingee object
  Future<ModelsTaskAssginee?> tasksTaskIDAssigneesPut(int taskID, ModelsTaskAssginee assignee,) async {
    final response = await tasksTaskIDAssigneesPutWithHttpInfo(taskID, assignee,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsTaskAssginee',) as ModelsTaskAssginee;
    
    }
    return null;
  }

  /// Delete an assignee
  ///
  /// Un-assign a user from a task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [int] userID (required):
  ///   Assignee user ID
  Future<Response> tasksTaskIDAssigneesUserIDDeleteWithHttpInfo(int taskID, int userID,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/assignees/{userID}'
      .replaceAll('{taskID}', taskID.toString())
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

  /// Delete an assignee
  ///
  /// Un-assign a user from a task.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [int] userID (required):
  ///   Assignee user ID
  Future<ModelsMessage?> tasksTaskIDAssigneesUserIDDelete(int taskID, int userID,) async {
    final response = await tasksTaskIDAssigneesUserIDDeleteWithHttpInfo(taskID, userID,);
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
}
