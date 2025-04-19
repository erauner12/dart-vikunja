//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApiApi {
  ApiApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get a list of all token api routes
  ///
  /// Returns a list of all API routes which are available to use with an api token, not a user login.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> routesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/routes';

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

  /// Get a list of all token api routes
  ///
  /// Returns a list of all API routes which are available to use with an api token, not a user login.
  Future<List<Map<String, ModelsRouteDetail>>?> routesGet() async {
    final response = await routesGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Map<String, ModelsRouteDetail>>') as List)
        .cast<Map>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get all api tokens of the current user
  ///
  /// Returns all api tokens the current user has created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page number, used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of tokens per page. This parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search tokens by their title.
  Future<Response> tokensGetWithHttpInfo({ int? page, int? perPage, String? s, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tokens';

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

  /// Get all api tokens of the current user
  ///
  /// Returns all api tokens the current user has created.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   The page number, used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of tokens per page. This parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search tokens by their title.
  Future<List<ModelsAPIToken>?> tokensGet({ int? page, int? perPage, String? s, }) async {
    final response = await tokensGetWithHttpInfo( page: page, perPage: perPage, s: s, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsAPIToken>') as List)
        .cast<ModelsAPIToken>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create a new api token
  ///
  /// Create a new api token to use on behalf of the user creating it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ModelsAPIToken] token (required):
  ///   The token object with required fields
  Future<Response> tokensPutWithHttpInfo(ModelsAPIToken token,) async {
    // ignore: prefer_const_declarations
    final path = r'/tokens';

    // ignore: prefer_final_locals
    Object? postBody = token;

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

  /// Create a new api token
  ///
  /// Create a new api token to use on behalf of the user creating it.
  ///
  /// Parameters:
  ///
  /// * [ModelsAPIToken] token (required):
  ///   The token object with required fields
  Future<ModelsAPIToken?> tokensPut(ModelsAPIToken token,) async {
    final response = await tokensPutWithHttpInfo(token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsAPIToken',) as ModelsAPIToken;
    
    }
    return null;
  }

  /// Deletes an existing api token
  ///
  /// Delete any of the user's api tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tokenID (required):
  ///   Token ID
  Future<Response> tokensTokenIDDeleteWithHttpInfo(int tokenID,) async {
    // ignore: prefer_const_declarations
    final path = r'/tokens/{tokenID}'
      .replaceAll('{tokenID}', tokenID.toString());

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

  /// Deletes an existing api token
  ///
  /// Delete any of the user's api tokens.
  ///
  /// Parameters:
  ///
  /// * [int] tokenID (required):
  ///   Token ID
  Future<ModelsMessage?> tokensTokenIDDelete(int tokenID,) async {
    final response = await tokensTokenIDDeleteWithHttpInfo(tokenID,);
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
