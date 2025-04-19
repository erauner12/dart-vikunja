//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SubscriptionsApi {
  SubscriptionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get all notifications for the current user
  ///
  /// Returns an array with all notifications for the current user.
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
  Future<Response> notificationsGetWithHttpInfo({ int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/notifications';

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

  /// Get all notifications for the current user
  ///
  /// Returns an array with all notifications for the current user.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  Future<List<NotificationsDatabaseNotification>?> notificationsGet({ int? page, int? perPage, }) async {
    final response = await notificationsGetWithHttpInfo( page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<NotificationsDatabaseNotification>') as List)
        .cast<NotificationsDatabaseNotification>()
        .toList(growable: false);

    }
    return null;
  }

  /// Mark a notification as (un-)read
  ///
  /// Marks a notification as either read or unread. A user can only mark their own notifications as read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Notification ID
  Future<Response> notificationsIdPostWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/notifications/{id}'
      .replaceAll('{id}', id.toString());

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

  /// Mark a notification as (un-)read
  ///
  /// Marks a notification as either read or unread. A user can only mark their own notifications as read.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Notification ID
  Future<ModelsDatabaseNotifications?> notificationsIdPost(int id,) async {
    final response = await notificationsIdPostWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsDatabaseNotifications',) as ModelsDatabaseNotifications;
    
    }
    return null;
  }

  /// Unsubscribe the current user from an entity.
  ///
  /// Unsubscribes the current user to an entity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] entity (required):
  ///   The entity the user subscribed to. Can be either `project` or `task`.
  ///
  /// * [String] entityID (required):
  ///   The numeric id of the subscribed entity to.
  Future<Response> subscriptionsEntityEntityIDDeleteWithHttpInfo(String entity, String entityID,) async {
    // ignore: prefer_const_declarations
    final path = r'/subscriptions/{entity}/{entityID}'
      .replaceAll('{entity}', entity)
      .replaceAll('{entityID}', entityID);

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

  /// Unsubscribe the current user from an entity.
  ///
  /// Unsubscribes the current user to an entity.
  ///
  /// Parameters:
  ///
  /// * [String] entity (required):
  ///   The entity the user subscribed to. Can be either `project` or `task`.
  ///
  /// * [String] entityID (required):
  ///   The numeric id of the subscribed entity to.
  Future<ModelsSubscription?> subscriptionsEntityEntityIDDelete(String entity, String entityID,) async {
    final response = await subscriptionsEntityEntityIDDeleteWithHttpInfo(entity, entityID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsSubscription',) as ModelsSubscription;
    
    }
    return null;
  }

  /// Subscribes the current user to an entity.
  ///
  /// Subscribes the current user to an entity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] entity (required):
  ///   The entity the user subscribes to. Can be either `project` or `task`.
  ///
  /// * [String] entityID (required):
  ///   The numeric id of the entity to subscribe to.
  Future<Response> subscriptionsEntityEntityIDPutWithHttpInfo(String entity, String entityID,) async {
    // ignore: prefer_const_declarations
    final path = r'/subscriptions/{entity}/{entityID}'
      .replaceAll('{entity}', entity)
      .replaceAll('{entityID}', entityID);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Subscribes the current user to an entity.
  ///
  /// Subscribes the current user to an entity.
  ///
  /// Parameters:
  ///
  /// * [String] entity (required):
  ///   The entity the user subscribes to. Can be either `project` or `task`.
  ///
  /// * [String] entityID (required):
  ///   The numeric id of the entity to subscribe to.
  Future<ModelsSubscription?> subscriptionsEntityEntityIDPut(String entity, String entityID,) async {
    final response = await subscriptionsEntityEntityIDPutWithHttpInfo(entity, entityID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsSubscription',) as ModelsSubscription;
    
    }
    return null;
  }
}
