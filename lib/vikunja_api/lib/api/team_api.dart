//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TeamApi {
  TeamApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get teams
  ///
  /// Returns all teams the current user is part of.
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
  ///   Search teams by its name.
  Future<Response> teamsGetWithHttpInfo({ int? page, int? perPage, String? s, }) async {
    // ignore: prefer_const_declarations
    final path = r'/teams';

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

  /// Get teams
  ///
  /// Returns all teams the current user is part of.
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
  ///   Search teams by its name.
  Future<List<ModelsTeam>?> teamsGet({ int? page, int? perPage, String? s, }) async {
    final response = await teamsGetWithHttpInfo( page: page, perPage: perPage, s: s, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsTeam>') as List)
        .cast<ModelsTeam>()
        .toList(growable: false);

    }
    return null;
  }

  /// Deletes a team
  ///
  /// Delets a team. This will also remove the access for all users in that team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  Future<Response> teamsIdDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{id}'
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

  /// Deletes a team
  ///
  /// Delets a team. This will also remove the access for all users in that team.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  Future<ModelsMessage?> teamsIdDelete(int id,) async {
    final response = await teamsIdDeleteWithHttpInfo(id,);
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

  /// Gets one team
  ///
  /// Returns a team by its ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  Future<Response> teamsIdGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{id}'
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

  /// Gets one team
  ///
  /// Returns a team by its ID.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  Future<ModelsTeam?> teamsIdGet(int id,) async {
    final response = await teamsIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsTeam',) as ModelsTeam;
    
    }
    return null;
  }

  /// Add a user to a team
  ///
  /// Add a user to a team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  ///
  /// * [ModelsTeamMember] team (required):
  ///   The user to be added to a team.
  Future<Response> teamsIdMembersPutWithHttpInfo(int id, ModelsTeamMember team,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{id}/members'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = team;

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

  /// Add a user to a team
  ///
  /// Add a user to a team.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  ///
  /// * [ModelsTeamMember] team (required):
  ///   The user to be added to a team.
  Future<ModelsTeamMember?> teamsIdMembersPut(int id, ModelsTeamMember team,) async {
    final response = await teamsIdMembersPutWithHttpInfo(id, team,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsTeamMember',) as ModelsTeamMember;
    
    }
    return null;
  }

  /// Toggle a team member's admin status
  ///
  /// If a user is team admin, this will make them member and vise-versa.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  ///
  /// * [int] userID (required):
  ///   User ID
  Future<Response> teamsIdMembersUserIDAdminPostWithHttpInfo(int id, int userID,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{id}/members/{userID}/admin'
      .replaceAll('{id}', id.toString())
      .replaceAll('{userID}', userID.toString());

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

  /// Toggle a team member's admin status
  ///
  /// If a user is team admin, this will make them member and vise-versa.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  ///
  /// * [int] userID (required):
  ///   User ID
  Future<ModelsMessage?> teamsIdMembersUserIDAdminPost(int id, int userID,) async {
    final response = await teamsIdMembersUserIDAdminPostWithHttpInfo(id, userID,);
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

  /// Remove a user from a team
  ///
  /// Remove a user from a team. This will also revoke any access this user might have via that team. A user can remove themselves from the team if they are not the last user in the team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  ///
  /// * [int] userID (required):
  ///   User ID
  Future<Response> teamsIdMembersUserIDDeleteWithHttpInfo(int id, int userID,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{id}/members/{userID}'
      .replaceAll('{id}', id.toString())
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

  /// Remove a user from a team
  ///
  /// Remove a user from a team. This will also revoke any access this user might have via that team. A user can remove themselves from the team if they are not the last user in the team.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  ///
  /// * [int] userID (required):
  ///   User ID
  Future<ModelsMessage?> teamsIdMembersUserIDDelete(int id, int userID,) async {
    final response = await teamsIdMembersUserIDDeleteWithHttpInfo(id, userID,);
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

  /// Updates a team
  ///
  /// Updates a team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  ///
  /// * [ModelsTeam] team (required):
  ///   The team with updated values you want to update.
  Future<Response> teamsIdPostWithHttpInfo(int id, ModelsTeam team,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = team;

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

  /// Updates a team
  ///
  /// Updates a team.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Team ID
  ///
  /// * [ModelsTeam] team (required):
  ///   The team with updated values you want to update.
  Future<ModelsTeam?> teamsIdPost(int id, ModelsTeam team,) async {
    final response = await teamsIdPostWithHttpInfo(id, team,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsTeam',) as ModelsTeam;
    
    }
    return null;
  }

  /// Creates a new team
  ///
  /// Creates a new team.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ModelsTeam] team (required):
  ///   The team you want to create.
  Future<Response> teamsPutWithHttpInfo(ModelsTeam team,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams';

    // ignore: prefer_final_locals
    Object? postBody = team;

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

  /// Creates a new team
  ///
  /// Creates a new team.
  ///
  /// Parameters:
  ///
  /// * [ModelsTeam] team (required):
  ///   The team you want to create.
  Future<ModelsTeam?> teamsPut(ModelsTeam team,) async {
    final response = await teamsPutWithHttpInfo(team,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsTeam',) as ModelsTeam;
    
    }
    return null;
  }
}
