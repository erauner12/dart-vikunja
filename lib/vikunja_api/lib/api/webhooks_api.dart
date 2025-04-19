//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WebhooksApi {
  WebhooksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get all api webhook targets for the specified project
  ///
  /// Get all api webhook targets for the specified project.
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
  ///   The maximum number of items per bucket per page. This parameter is limited by the configured maximum of items per page.
  Future<Response> projectsIdWebhooksGetWithHttpInfo(int id, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/webhooks'
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

  /// Get all api webhook targets for the specified project
  ///
  /// Get all api webhook targets for the specified project.
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
  ///   The maximum number of items per bucket per page. This parameter is limited by the configured maximum of items per page.
  Future<List<ModelsWebhook>?> projectsIdWebhooksGet(int id, { int? page, int? perPage, }) async {
    final response = await projectsIdWebhooksGetWithHttpInfo(id,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsWebhook>') as List)
        .cast<ModelsWebhook>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create a webhook target
  ///
  /// Create a webhook target which receives POST requests about specified events from a project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [ModelsWebhook] webhook (required):
  ///   The webhook target object with required fields
  Future<Response> projectsIdWebhooksPutWithHttpInfo(int id, ModelsWebhook webhook,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/webhooks'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = webhook;

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

  /// Create a webhook target
  ///
  /// Create a webhook target which receives POST requests about specified events from a project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [ModelsWebhook] webhook (required):
  ///   The webhook target object with required fields
  Future<ModelsWebhook?> projectsIdWebhooksPut(int id, ModelsWebhook webhook,) async {
    final response = await projectsIdWebhooksPutWithHttpInfo(id, webhook,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsWebhook',) as ModelsWebhook;
    
    }
    return null;
  }

  /// Deletes an existing webhook target
  ///
  /// Delete any of the project's webhook targets.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [int] webhookID (required):
  ///   Webhook ID
  Future<Response> projectsIdWebhooksWebhookIDDeleteWithHttpInfo(int id, int webhookID,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/webhooks/{webhookID}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{webhookID}', webhookID.toString());

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

  /// Deletes an existing webhook target
  ///
  /// Delete any of the project's webhook targets.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [int] webhookID (required):
  ///   Webhook ID
  Future<ModelsMessage?> projectsIdWebhooksWebhookIDDelete(int id, int webhookID,) async {
    final response = await projectsIdWebhooksWebhookIDDeleteWithHttpInfo(id, webhookID,);
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

  /// Change a webhook target's events.
  ///
  /// Change a webhook target's events. You cannot change other values of a webhook.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [int] webhookID (required):
  ///   Webhook ID
  Future<Response> projectsIdWebhooksWebhookIDPostWithHttpInfo(int id, int webhookID,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/webhooks/{webhookID}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{webhookID}', webhookID.toString());

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

  /// Change a webhook target's events.
  ///
  /// Change a webhook target's events. You cannot change other values of a webhook.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [int] webhookID (required):
  ///   Webhook ID
  Future<ModelsWebhook?> projectsIdWebhooksWebhookIDPost(int id, int webhookID,) async {
    final response = await projectsIdWebhooksWebhookIDPostWithHttpInfo(id, webhookID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsWebhook',) as ModelsWebhook;
    
    }
    return null;
  }

  /// Get all possible webhook events
  ///
  /// Get all possible webhook events to use when creating or updating a webhook target.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> webhooksEventsGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/events';

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

  /// Get all possible webhook events
  ///
  /// Get all possible webhook events to use when creating or updating a webhook target.
  Future<List<String>?> webhooksEventsGet() async {
    final response = await webhooksEventsGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return null;
  }
}
