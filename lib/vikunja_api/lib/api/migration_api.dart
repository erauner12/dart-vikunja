//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MigrationApi {
  MigrationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get the auth url from Microsoft Todo
  ///
  /// Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from Microsoft Todo to Vikunja.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> migrationMicrosoftTodoAuthGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/migration/microsoft-todo/auth';

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

  /// Get the auth url from Microsoft Todo
  ///
  /// Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from Microsoft Todo to Vikunja.
  Future<HandlerAuthURL?> migrationMicrosoftTodoAuthGet() async {
    final response = await migrationMicrosoftTodoAuthGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HandlerAuthURL',) as HandlerAuthURL;
    
    }
    return null;
  }

  /// Migrate all projects, tasks etc. from Microsoft Todo
  ///
  /// Migrates all tasklinsts, tasks, notes and reminders from Microsoft Todo to Vikunja.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MicrosofttodoMigration] migrationCode (required):
  ///   The auth token previously obtained from the auth url. See the docs for /migration/microsoft-todo/auth.
  Future<Response> migrationMicrosoftTodoMigratePostWithHttpInfo(MicrosofttodoMigration migrationCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/migration/microsoft-todo/migrate';

    // ignore: prefer_final_locals
    Object? postBody = migrationCode;

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

  /// Migrate all projects, tasks etc. from Microsoft Todo
  ///
  /// Migrates all tasklinsts, tasks, notes and reminders from Microsoft Todo to Vikunja.
  ///
  /// Parameters:
  ///
  /// * [MicrosofttodoMigration] migrationCode (required):
  ///   The auth token previously obtained from the auth url. See the docs for /migration/microsoft-todo/auth.
  Future<ModelsMessage?> migrationMicrosoftTodoMigratePost(MicrosofttodoMigration migrationCode,) async {
    final response = await migrationMicrosoftTodoMigratePostWithHttpInfo(migrationCode,);
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

  /// Get migration status
  ///
  /// Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> migrationMicrosoftTodoStatusGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/migration/microsoft-todo/status';

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

  /// Get migration status
  ///
  /// Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
  Future<MigrationStatus?> migrationMicrosoftTodoStatusGet() async {
    final response = await migrationMicrosoftTodoStatusGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MigrationStatus',) as MigrationStatus;
    
    }
    return null;
  }

  /// Import all projects, tasks etc. from a TickTick backup export
  ///
  /// Imports all projects, tasks, notes, reminders, subtasks and files from a TickTick backup export into Vikunja.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] import_ (required):
  ///   The TickTick backup csv file.
  Future<Response> migrationTicktickMigratePostWithHttpInfo(String import_,) async {
    // ignore: prefer_const_declarations
    final path = r'/migration/ticktick/migrate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (import_ != null) {
      formParams[r'import'] = parameterToString(import_);
    }

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

  /// Import all projects, tasks etc. from a TickTick backup export
  ///
  /// Imports all projects, tasks, notes, reminders, subtasks and files from a TickTick backup export into Vikunja.
  ///
  /// Parameters:
  ///
  /// * [String] import_ (required):
  ///   The TickTick backup csv file.
  Future<ModelsMessage?> migrationTicktickMigratePost(String import_,) async {
    final response = await migrationTicktickMigratePostWithHttpInfo(import_,);
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

  /// Get migration status
  ///
  /// Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> migrationTicktickStatusGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/migration/ticktick/status';

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

  /// Get migration status
  ///
  /// Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
  Future<MigrationStatus?> migrationTicktickStatusGet() async {
    final response = await migrationTicktickStatusGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MigrationStatus',) as MigrationStatus;
    
    }
    return null;
  }

  /// Get the auth url from todoist
  ///
  /// Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from todoist to Vikunja.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> migrationTodoistAuthGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/migration/todoist/auth';

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

  /// Get the auth url from todoist
  ///
  /// Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from todoist to Vikunja.
  Future<HandlerAuthURL?> migrationTodoistAuthGet() async {
    final response = await migrationTodoistAuthGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HandlerAuthURL',) as HandlerAuthURL;
    
    }
    return null;
  }

  /// Migrate all lists, tasks etc. from todoist
  ///
  /// Migrates all projects, tasks, notes, reminders, subtasks and files from todoist to vikunja.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TodoistMigration] migrationCode (required):
  ///   The auth code previously obtained from the auth url. See the docs for /migration/todoist/auth.
  Future<Response> migrationTodoistMigratePostWithHttpInfo(TodoistMigration migrationCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/migration/todoist/migrate';

    // ignore: prefer_final_locals
    Object? postBody = migrationCode;

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

  /// Migrate all lists, tasks etc. from todoist
  ///
  /// Migrates all projects, tasks, notes, reminders, subtasks and files from todoist to vikunja.
  ///
  /// Parameters:
  ///
  /// * [TodoistMigration] migrationCode (required):
  ///   The auth code previously obtained from the auth url. See the docs for /migration/todoist/auth.
  Future<ModelsMessage?> migrationTodoistMigratePost(TodoistMigration migrationCode,) async {
    final response = await migrationTodoistMigratePostWithHttpInfo(migrationCode,);
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

  /// Get migration status
  ///
  /// Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> migrationTodoistStatusGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/migration/todoist/status';

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

  /// Get migration status
  ///
  /// Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
  Future<MigrationStatus?> migrationTodoistStatusGet() async {
    final response = await migrationTodoistStatusGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MigrationStatus',) as MigrationStatus;
    
    }
    return null;
  }

  /// Get the auth url from trello
  ///
  /// Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from trello to Vikunja.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> migrationTrelloAuthGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/migration/trello/auth';

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

  /// Get the auth url from trello
  ///
  /// Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from trello to Vikunja.
  Future<HandlerAuthURL?> migrationTrelloAuthGet() async {
    final response = await migrationTrelloAuthGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HandlerAuthURL',) as HandlerAuthURL;
    
    }
    return null;
  }

  /// Migrate all projects, tasks etc. from trello
  ///
  /// Migrates all projects, tasks, notes, reminders, subtasks and files from trello to vikunja.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TrelloMigration] migrationCode (required):
  ///   The auth token previously obtained from the auth url. See the docs for /migration/trello/auth.
  Future<Response> migrationTrelloMigratePostWithHttpInfo(TrelloMigration migrationCode,) async {
    // ignore: prefer_const_declarations
    final path = r'/migration/trello/migrate';

    // ignore: prefer_final_locals
    Object? postBody = migrationCode;

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

  /// Migrate all projects, tasks etc. from trello
  ///
  /// Migrates all projects, tasks, notes, reminders, subtasks and files from trello to vikunja.
  ///
  /// Parameters:
  ///
  /// * [TrelloMigration] migrationCode (required):
  ///   The auth token previously obtained from the auth url. See the docs for /migration/trello/auth.
  Future<ModelsMessage?> migrationTrelloMigratePost(TrelloMigration migrationCode,) async {
    final response = await migrationTrelloMigratePostWithHttpInfo(migrationCode,);
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

  /// Get migration status
  ///
  /// Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> migrationTrelloStatusGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/migration/trello/status';

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

  /// Get migration status
  ///
  /// Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
  Future<MigrationStatus?> migrationTrelloStatusGet() async {
    final response = await migrationTrelloStatusGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MigrationStatus',) as MigrationStatus;
    
    }
    return null;
  }

  /// Import all projects, tasks etc. from a Vikunja data export
  ///
  /// Imports all projects, tasks, notes, reminders, subtasks and files from a Vikunjda data export into Vikunja.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] import_ (required):
  ///   The Vikunja export zip file.
  Future<Response> migrationVikunjaFileMigratePostWithHttpInfo(String import_,) async {
    // ignore: prefer_const_declarations
    final path = r'/migration/vikunja-file/migrate';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (import_ != null) {
      formParams[r'import'] = parameterToString(import_);
    }

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

  /// Import all projects, tasks etc. from a Vikunja data export
  ///
  /// Imports all projects, tasks, notes, reminders, subtasks and files from a Vikunjda data export into Vikunja.
  ///
  /// Parameters:
  ///
  /// * [String] import_ (required):
  ///   The Vikunja export zip file.
  Future<ModelsMessage?> migrationVikunjaFileMigratePost(String import_,) async {
    final response = await migrationVikunjaFileMigratePostWithHttpInfo(import_,);
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

  /// Get migration status
  ///
  /// Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> migrationVikunjaFileStatusGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/migration/vikunja-file/status';

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

  /// Get migration status
  ///
  /// Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
  Future<MigrationStatus?> migrationVikunjaFileStatusGet() async {
    final response = await migrationVikunjaFileStatusGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MigrationStatus',) as MigrationStatus;
    
    }
    return null;
  }
}
