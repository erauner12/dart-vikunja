//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LabelsApi {
  LabelsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get all labels a user has access to
  ///
  /// Returns all labels which are either created by the user or associated with a task the user has at least read-access to.
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
  ///   Search labels by label text.
  Future<Response> labelsGetWithHttpInfo({ int? page, int? perPage, String? s, }) async {
    // ignore: prefer_const_declarations
    final path = r'/labels';

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

  /// Get all labels a user has access to
  ///
  /// Returns all labels which are either created by the user or associated with a task the user has at least read-access to.
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
  ///   Search labels by label text.
  Future<List<ModelsLabel>?> labelsGet({ int? page, int? perPage, String? s, }) async {
    final response = await labelsGetWithHttpInfo( page: page, perPage: perPage, s: s, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsLabel>') as List)
        .cast<ModelsLabel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Delete a label
  ///
  /// Delete an existing label. The user needs to be the creator of the label to be able to do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Label ID
  Future<Response> labelsIdDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/labels/{id}'
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

  /// Delete a label
  ///
  /// Delete an existing label. The user needs to be the creator of the label to be able to do this.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Label ID
  Future<ModelsLabel?> labelsIdDelete(int id,) async {
    final response = await labelsIdDeleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsLabel',) as ModelsLabel;
    
    }
    return null;
  }

  /// Gets one label
  ///
  /// Returns one label by its ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Label ID
  Future<Response> labelsIdGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/labels/{id}'
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

  /// Gets one label
  ///
  /// Returns one label by its ID.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Label ID
  Future<ModelsLabel?> labelsIdGet(int id,) async {
    final response = await labelsIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsLabel',) as ModelsLabel;
    
    }
    return null;
  }

  /// Update a label
  ///
  /// Update an existing label. The user needs to be the creator of the label to be able to do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Label ID
  ///
  /// * [ModelsLabel] label (required):
  ///   The label object
  Future<Response> labelsIdPutWithHttpInfo(int id, ModelsLabel label,) async {
    // ignore: prefer_const_declarations
    final path = r'/labels/{id}'
      .replaceAll('{id}', id.toString());

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

  /// Update a label
  ///
  /// Update an existing label. The user needs to be the creator of the label to be able to do this.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Label ID
  ///
  /// * [ModelsLabel] label (required):
  ///   The label object
  Future<ModelsLabel?> labelsIdPut(int id, ModelsLabel label,) async {
    final response = await labelsIdPutWithHttpInfo(id, label,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsLabel',) as ModelsLabel;
    
    }
    return null;
  }

  /// Create a label
  ///
  /// Creates a new label.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ModelsLabel] label (required):
  ///   The label object
  Future<Response> labelsPutWithHttpInfo(ModelsLabel label,) async {
    // ignore: prefer_const_declarations
    final path = r'/labels';

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

  /// Create a label
  ///
  /// Creates a new label.
  ///
  /// Parameters:
  ///
  /// * [ModelsLabel] label (required):
  ///   The label object
  Future<ModelsLabel?> labelsPut(ModelsLabel label,) async {
    final response = await labelsPutWithHttpInfo(label,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsLabel',) as ModelsLabel;
    
    }
    return null;
  }

  /// Update all labels on a task.
  ///
  /// Updates all labels on a task. Every label which is not passed but exists on the task will be deleted. Every label which does not exist on the task will be added. All labels which are passed and already exist on the task won't be touched.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [ModelsLabelTaskBulk] label (required):
  ///   The array of labels
  Future<Response> tasksTaskIDLabelsBulkPostWithHttpInfo(int taskID, ModelsLabelTaskBulk label,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/labels/bulk'
      .replaceAll('{taskID}', taskID.toString());

    // ignore: prefer_final_locals
    Object? postBody = label;

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

  /// Update all labels on a task.
  ///
  /// Updates all labels on a task. Every label which is not passed but exists on the task will be deleted. Every label which does not exist on the task will be added. All labels which are passed and already exist on the task won't be touched.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [ModelsLabelTaskBulk] label (required):
  ///   The array of labels
  Future<ModelsLabelTaskBulk?> tasksTaskIDLabelsBulkPost(int taskID, ModelsLabelTaskBulk label,) async {
    final response = await tasksTaskIDLabelsBulkPostWithHttpInfo(taskID, label,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsLabelTaskBulk',) as ModelsLabelTaskBulk;
    
    }
    return null;
  }

  /// Get all labels on a task
  ///
  /// Returns all labels which are assicociated with a given task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] task (required):
  ///   Task ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search labels by label text.
  Future<Response> tasksTaskLabelsGetWithHttpInfo(int task, { int? page, int? perPage, String? s, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{task}/labels'
      .replaceAll('{task}', task.toString());

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

  /// Get all labels on a task
  ///
  /// Returns all labels which are assicociated with a given task.
  ///
  /// Parameters:
  ///
  /// * [int] task (required):
  ///   Task ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search labels by label text.
  Future<List<ModelsLabel>?> tasksTaskLabelsGet(int task, { int? page, int? perPage, String? s, }) async {
    final response = await tasksTaskLabelsGetWithHttpInfo(task,  page: page, perPage: perPage, s: s, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsLabel>') as List)
        .cast<ModelsLabel>()
        .toList(growable: false);

    }
    return null;
  }

  /// Remove a label from a task
  ///
  /// Remove a label from a task. The user needs to have write-access to the project to be able do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] task (required):
  ///   Task ID
  ///
  /// * [int] label (required):
  ///   Label ID
  Future<Response> tasksTaskLabelsLabelDeleteWithHttpInfo(int task, int label,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{task}/labels/{label}'
      .replaceAll('{task}', task.toString())
      .replaceAll('{label}', label.toString());

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

  /// Remove a label from a task
  ///
  /// Remove a label from a task. The user needs to have write-access to the project to be able do this.
  ///
  /// Parameters:
  ///
  /// * [int] task (required):
  ///   Task ID
  ///
  /// * [int] label (required):
  ///   Label ID
  Future<ModelsMessage?> tasksTaskLabelsLabelDelete(int task, int label,) async {
    final response = await tasksTaskLabelsLabelDeleteWithHttpInfo(task, label,);
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

  /// Add a label to a task
  ///
  /// Add a label to a task. The user needs to have write-access to the project to be able do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] task (required):
  ///   Task ID
  ///
  /// * [ModelsLabelTask] label (required):
  ///   The label object
  Future<Response> tasksTaskLabelsPutWithHttpInfo(int task, ModelsLabelTask label,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{task}/labels'
      .replaceAll('{task}', task.toString());

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

  /// Add a label to a task
  ///
  /// Add a label to a task. The user needs to have write-access to the project to be able do this.
  ///
  /// Parameters:
  ///
  /// * [int] task (required):
  ///   Task ID
  ///
  /// * [ModelsLabelTask] label (required):
  ///   The label object
  Future<ModelsLabelTask?> tasksTaskLabelsPut(int task, ModelsLabelTask label,) async {
    final response = await tasksTaskLabelsPutWithHttpInfo(task, label,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsLabelTask',) as ModelsLabelTask;
    
    }
    return null;
  }
}
