//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthApi {
  AuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Authenticate a user with OpenID Connect
  ///
  /// After a redirect from the OpenID Connect provider to the frontend has been made with the authentication `code`, this endpoint can be used to obtain a jwt token for that user and thus log them in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] provider (required):
  ///   The OpenID Connect provider key as returned by the /info endpoint
  ///
  /// * [OpenidCallback] callback (required):
  ///   The openid callback
  Future<Response> getTokenOpenidWithHttpInfo(int provider, OpenidCallback callback,) async {
    // ignore: prefer_const_declarations
    final path = r'/auth/openid/{provider}/callback'
      .replaceAll('{provider}', provider.toString());

    // ignore: prefer_final_locals
    Object? postBody = callback;

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

  /// Authenticate a user with OpenID Connect
  ///
  /// After a redirect from the OpenID Connect provider to the frontend has been made with the authentication `code`, this endpoint can be used to obtain a jwt token for that user and thus log them in.
  ///
  /// Parameters:
  ///
  /// * [int] provider (required):
  ///   The OpenID Connect provider key as returned by the /info endpoint
  ///
  /// * [OpenidCallback] callback (required):
  ///   The openid callback
  Future<AuthToken?> getTokenOpenid(int provider, OpenidCallback callback,) async {
    final response = await getTokenOpenidWithHttpInfo(provider, callback,);
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

  /// Login
  ///
  /// Logs a user in. Returns a JWT-Token to authenticate further requests.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserLogin] credentials (required):
  ///   The login credentials
  Future<Response> loginPostWithHttpInfo(UserLogin credentials,) async {
    // ignore: prefer_const_declarations
    final path = r'/login';

    // ignore: prefer_final_locals
    Object? postBody = credentials;

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

  /// Login
  ///
  /// Logs a user in. Returns a JWT-Token to authenticate further requests.
  ///
  /// Parameters:
  ///
  /// * [UserLogin] credentials (required):
  ///   The login credentials
  Future<AuthToken?> loginPost(UserLogin credentials,) async {
    final response = await loginPostWithHttpInfo(credentials,);
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

  /// Register
  ///
  /// Creates a new user account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserAPIUserPassword] credentials (required):
  ///   The user credentials
  Future<Response> registerPostWithHttpInfo(UserAPIUserPassword credentials,) async {
    // ignore: prefer_const_declarations
    final path = r'/register';

    // ignore: prefer_final_locals
    Object? postBody = credentials;

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

  /// Register
  ///
  /// Creates a new user account.
  ///
  /// Parameters:
  ///
  /// * [UserAPIUserPassword] credentials (required):
  ///   The user credentials
  Future<UserUser?> registerPost(UserAPIUserPassword credentials,) async {
    final response = await registerPostWithHttpInfo(credentials,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserUser',) as UserUser;
    
    }
    return null;
  }
}
