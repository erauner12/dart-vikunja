//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TestingApi {
  TestingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reset the db to a defined state
  ///
  /// Fills the specified table with the content provided in the payload. You need to enable the testing endpoint before doing this and provide the `Authorization: <token>` secret when making requests to this endpoint. See docs for more details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   The table to reset
  Future<Response> testTablePatchWithHttpInfo(String table,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/{table}'
      .replaceAll('{table}', table);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Reset the db to a defined state
  ///
  /// Fills the specified table with the content provided in the payload. You need to enable the testing endpoint before doing this and provide the `Authorization: <token>` secret when making requests to this endpoint. See docs for more details.
  ///
  /// Parameters:
  ///
  /// * [String] table (required):
  ///   The table to reset
  Future<List<UserUser>?> testTablePatch(String table,) async {
    final response = await testTablePatchWithHttpInfo(table,);
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
}
