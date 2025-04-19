//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Confirm the email of a new user
  ///
  /// Confirms the email of a newly registered user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserEmailConfirm] credentials (required):
  ///   The token.
  Future<Response> userConfirmPostWithHttpInfo(UserEmailConfirm credentials,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/confirm';

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

  /// Confirm the email of a new user
  ///
  /// Confirms the email of a newly registered user.
  ///
  /// Parameters:
  ///
  /// * [UserEmailConfirm] credentials (required):
  ///   The token.
  Future<ModelsMessage?> userConfirmPost(UserEmailConfirm credentials,) async {
    final response = await userConfirmPostWithHttpInfo(credentials,);
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

  /// Abort a user deletion request
  ///
  /// Aborts an in-progress user deletion.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [V1UserPasswordConfirmation] credentials (required):
  ///   The user password to confirm.
  Future<Response> userDeletionCancelPostWithHttpInfo(V1UserPasswordConfirmation credentials,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/deletion/cancel';

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

  /// Abort a user deletion request
  ///
  /// Aborts an in-progress user deletion.
  ///
  /// Parameters:
  ///
  /// * [V1UserPasswordConfirmation] credentials (required):
  ///   The user password to confirm.
  Future<ModelsMessage?> userDeletionCancelPost(V1UserPasswordConfirmation credentials,) async {
    final response = await userDeletionCancelPostWithHttpInfo(credentials,);
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

  /// Confirm a user deletion request
  ///
  /// Confirms the deletion request of a user sent via email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [V1UserDeletionRequestConfirm] credentials (required):
  ///   The token.
  Future<Response> userDeletionConfirmPostWithHttpInfo(V1UserDeletionRequestConfirm credentials,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/deletion/confirm';

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

  /// Confirm a user deletion request
  ///
  /// Confirms the deletion request of a user sent via email.
  ///
  /// Parameters:
  ///
  /// * [V1UserDeletionRequestConfirm] credentials (required):
  ///   The token.
  Future<ModelsMessage?> userDeletionConfirmPost(V1UserDeletionRequestConfirm credentials,) async {
    final response = await userDeletionConfirmPostWithHttpInfo(credentials,);
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

  /// Request the deletion of the user
  ///
  /// Requests the deletion of the current user. It will trigger an email which has to be confirmed to start the deletion.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [V1UserPasswordConfirmation] credentials (required):
  ///   The user password.
  Future<Response> userDeletionRequestPostWithHttpInfo(V1UserPasswordConfirmation credentials,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/deletion/request';

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

  /// Request the deletion of the user
  ///
  /// Requests the deletion of the current user. It will trigger an email which has to be confirmed to start the deletion.
  ///
  /// Parameters:
  ///
  /// * [V1UserPasswordConfirmation] credentials (required):
  ///   The user password.
  Future<ModelsMessage?> userDeletionRequestPost(V1UserPasswordConfirmation credentials,) async {
    final response = await userDeletionRequestPostWithHttpInfo(credentials,);
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

  /// Download a user data export.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [V1UserPasswordConfirmation] password (required):
  ///   User password to confirm the download.
  Future<Response> userExportDownloadPostWithHttpInfo(V1UserPasswordConfirmation password,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/export/download';

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

  /// Download a user data export.
  ///
  /// Parameters:
  ///
  /// * [V1UserPasswordConfirmation] password (required):
  ///   User password to confirm the download.
  Future<ModelsMessage?> userExportDownloadPost(V1UserPasswordConfirmation password,) async {
    final response = await userExportDownloadPostWithHttpInfo(password,);
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

  /// Request a user data export.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [V1UserPasswordConfirmation] password (required):
  ///   User password to confirm the data export request.
  Future<Response> userExportRequestPostWithHttpInfo(V1UserPasswordConfirmation password,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/export/request';

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

  /// Request a user data export.
  ///
  /// Parameters:
  ///
  /// * [V1UserPasswordConfirmation] password (required):
  ///   User password to confirm the data export request.
  Future<ModelsMessage?> userExportRequestPost(V1UserPasswordConfirmation password,) async {
    final response = await userExportRequestPostWithHttpInfo(password,);
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

  /// Get user information
  ///
  /// Returns the current user object with their settings.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user';

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

  /// Get user information
  ///
  /// Returns the current user object with their settings.
  Future<V1UserWithSettings?> userGet() async {
    final response = await userGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'V1UserWithSettings',) as V1UserWithSettings;
    
    }
    return null;
  }

  /// Change password
  ///
  /// Lets the current user change its password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [V1UserPassword] userPassword (required):
  ///   The current and new password.
  Future<Response> userPasswordPostWithHttpInfo(V1UserPassword userPassword,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/password';

    // ignore: prefer_final_locals
    Object? postBody = userPassword;

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

  /// Change password
  ///
  /// Lets the current user change its password.
  ///
  /// Parameters:
  ///
  /// * [V1UserPassword] userPassword (required):
  ///   The current and new password.
  Future<ModelsMessage?> userPasswordPost(V1UserPassword userPassword,) async {
    final response = await userPasswordPostWithHttpInfo(userPassword,);
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

  /// Resets a password
  ///
  /// Resets a user email with a previously reset token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserPasswordReset] credentials (required):
  ///   The token with the new password.
  Future<Response> userPasswordResetPostWithHttpInfo(UserPasswordReset credentials,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/password/reset';

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

  /// Resets a password
  ///
  /// Resets a user email with a previously reset token.
  ///
  /// Parameters:
  ///
  /// * [UserPasswordReset] credentials (required):
  ///   The token with the new password.
  Future<ModelsMessage?> userPasswordResetPost(UserPasswordReset credentials,) async {
    final response = await userPasswordResetPostWithHttpInfo(credentials,);
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

  /// Request password reset token
  ///
  /// Requests a token to reset a users password. The token is sent via email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserPasswordTokenRequest] credentials (required):
  ///   The username of the user to request a token for.
  Future<Response> userPasswordTokenPostWithHttpInfo(UserPasswordTokenRequest credentials,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/password/token';

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

  /// Request password reset token
  ///
  /// Requests a token to reset a users password. The token is sent via email.
  ///
  /// Parameters:
  ///
  /// * [UserPasswordTokenRequest] credentials (required):
  ///   The username of the user to request a token for.
  Future<ModelsMessage?> userPasswordTokenPost(UserPasswordTokenRequest credentials,) async {
    final response = await userPasswordTokenPostWithHttpInfo(credentials,);
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

  /// Return user avatar setting
  ///
  /// Returns the current user's avatar setting.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userSettingsAvatarGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/avatar';

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

  /// Return user avatar setting
  ///
  /// Returns the current user's avatar setting.
  Future<V1UserAvatarProvider?> userSettingsAvatarGet() async {
    final response = await userSettingsAvatarGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'V1UserAvatarProvider',) as V1UserAvatarProvider;
    
    }
    return null;
  }

  /// Set the user's avatar
  ///
  /// Changes the user avatar. Valid types are gravatar (uses the user email), upload, initials, default.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [V1UserAvatarProvider] avatar (required):
  ///   The user's avatar setting
  Future<Response> userSettingsAvatarPostWithHttpInfo(V1UserAvatarProvider avatar,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/avatar';

    // ignore: prefer_final_locals
    Object? postBody = avatar;

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

  /// Set the user's avatar
  ///
  /// Changes the user avatar. Valid types are gravatar (uses the user email), upload, initials, default.
  ///
  /// Parameters:
  ///
  /// * [V1UserAvatarProvider] avatar (required):
  ///   The user's avatar setting
  Future<ModelsMessage?> userSettingsAvatarPost(V1UserAvatarProvider avatar,) async {
    final response = await userSettingsAvatarPostWithHttpInfo(avatar,);
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

  /// Upload a user avatar
  ///
  /// Upload a user avatar. This will also set the user's avatar provider to \"upload\"
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] avatar (required):
  ///   The avatar as single file.
  Future<Response> userSettingsAvatarUploadPutWithHttpInfo(String avatar,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/avatar/upload';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('PUT', Uri.parse(path));
    if (avatar != null) {
      hasFields = true;
      mp.fields[r'avatar'] = parameterToString(avatar);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Upload a user avatar
  ///
  /// Upload a user avatar. This will also set the user's avatar provider to \"upload\"
  ///
  /// Parameters:
  ///
  /// * [String] avatar (required):
  ///   The avatar as single file.
  Future<ModelsMessage?> userSettingsAvatarUploadPut(String avatar,) async {
    final response = await userSettingsAvatarUploadPutWithHttpInfo(avatar,);
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

  /// Update email address
  ///
  /// Lets the current user change their email address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserEmailUpdate] userEmailUpdate (required):
  ///   The new email address and current password.
  Future<Response> userSettingsEmailPostWithHttpInfo(UserEmailUpdate userEmailUpdate,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/email';

    // ignore: prefer_final_locals
    Object? postBody = userEmailUpdate;

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

  /// Update email address
  ///
  /// Lets the current user change their email address.
  ///
  /// Parameters:
  ///
  /// * [UserEmailUpdate] userEmailUpdate (required):
  ///   The new email address and current password.
  Future<ModelsMessage?> userSettingsEmailPost(UserEmailUpdate userEmailUpdate,) async {
    final response = await userSettingsEmailPostWithHttpInfo(userEmailUpdate,);
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

  /// Change general user settings of the current user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [V1UserSettings] avatar (required):
  ///   The updated user settings
  Future<Response> userSettingsGeneralPostWithHttpInfo(V1UserSettings avatar,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/general';

    // ignore: prefer_final_locals
    Object? postBody = avatar;

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

  /// Change general user settings of the current user.
  ///
  /// Parameters:
  ///
  /// * [V1UserSettings] avatar (required):
  ///   The updated user settings
  Future<ModelsMessage?> userSettingsGeneralPost(V1UserSettings avatar,) async {
    final response = await userSettingsGeneralPostWithHttpInfo(avatar,);
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

  /// Returns the caldav tokens for the current user
  ///
  /// Return the IDs and created dates of all caldav tokens for the current user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userSettingsTokenCaldavGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/token/caldav';

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

  /// Returns the caldav tokens for the current user
  ///
  /// Return the IDs and created dates of all caldav tokens for the current user.
  Future<List<UserToken>?> userSettingsTokenCaldavGet() async {
    final response = await userSettingsTokenCaldavGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserToken>') as List)
        .cast<UserToken>()
        .toList(growable: false);

    }
    return null;
  }

  /// Delete a caldav token by id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Token ID
  Future<Response> userSettingsTokenCaldavIdGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/token/caldav/{id}'
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

  /// Delete a caldav token by id
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Token ID
  Future<ModelsMessage?> userSettingsTokenCaldavIdGet(int id,) async {
    final response = await userSettingsTokenCaldavIdGetWithHttpInfo(id,);
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

  /// Generate a caldav token
  ///
  /// Generates a caldav token which can be used for the caldav api. It is not possible to see the token again after it was generated.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userSettingsTokenCaldavPutWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/token/caldav';

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

  /// Generate a caldav token
  ///
  /// Generates a caldav token which can be used for the caldav api. It is not possible to see the token again after it was generated.
  Future<UserToken?> userSettingsTokenCaldavPut() async {
    final response = await userSettingsTokenCaldavPutWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserToken',) as UserToken;
    
    }
    return null;
  }

  /// Disable totp settings
  ///
  /// Disables any totp settings for the current user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserLogin] totp (required):
  ///   The current user's password (only password is enough).
  Future<Response> userSettingsTotpDisablePostWithHttpInfo(UserLogin totp,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/totp/disable';

    // ignore: prefer_final_locals
    Object? postBody = totp;

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

  /// Disable totp settings
  ///
  /// Disables any totp settings for the current user.
  ///
  /// Parameters:
  ///
  /// * [UserLogin] totp (required):
  ///   The current user's password (only password is enough).
  Future<ModelsMessage?> userSettingsTotpDisablePost(UserLogin totp,) async {
    final response = await userSettingsTotpDisablePostWithHttpInfo(totp,);
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

  /// Enable a previously enrolled totp setting.
  ///
  /// Enables a previously enrolled totp setting by providing a totp passcode.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserTOTPPasscode] totp (required):
  ///   The totp passcode.
  Future<Response> userSettingsTotpEnablePostWithHttpInfo(UserTOTPPasscode totp,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/totp/enable';

    // ignore: prefer_final_locals
    Object? postBody = totp;

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

  /// Enable a previously enrolled totp setting.
  ///
  /// Enables a previously enrolled totp setting by providing a totp passcode.
  ///
  /// Parameters:
  ///
  /// * [UserTOTPPasscode] totp (required):
  ///   The totp passcode.
  Future<ModelsMessage?> userSettingsTotpEnablePost(UserTOTPPasscode totp,) async {
    final response = await userSettingsTotpEnablePostWithHttpInfo(totp,);
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

  /// Enroll a user into totp
  ///
  /// Creates an initial setup for the user in the db. After this step, the user needs to verify they have a working totp setup with the \"enable totp\" endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userSettingsTotpEnrollPostWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/totp/enroll';

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

  /// Enroll a user into totp
  ///
  /// Creates an initial setup for the user in the db. After this step, the user needs to verify they have a working totp setup with the \"enable totp\" endpoint.
  Future<UserTOTP?> userSettingsTotpEnrollPost() async {
    final response = await userSettingsTotpEnrollPostWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserTOTP',) as UserTOTP;
    
    }
    return null;
  }

  /// Totp setting for the current user
  ///
  /// Returns the current user totp setting or an error if it is not enabled.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userSettingsTotpGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/totp';

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

  /// Totp setting for the current user
  ///
  /// Returns the current user totp setting or an error if it is not enabled.
  Future<UserTOTP?> userSettingsTotpGet() async {
    final response = await userSettingsTotpGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserTOTP',) as UserTOTP;
    
    }
    return null;
  }

  /// Totp QR Code
  ///
  /// Returns a qr code for easier setup at end user's devices.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userSettingsTotpQrcodeGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/settings/totp/qrcode';

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

  /// Totp QR Code
  ///
  /// Returns a qr code for easier setup at end user's devices.
  Future<MultipartFile?> userSettingsTotpQrcodeGet() async {
    final response = await userSettingsTotpQrcodeGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get all available time zones on this vikunja instance
  ///
  /// Because available time zones depend on the system Vikunja is running on, this endpoint returns a project of all valid time zones this particular Vikunja instance can handle. The project of time zones is not sorted, you should sort it on the client.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userTimezonesGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/timezones';

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

  /// Get all available time zones on this vikunja instance
  ///
  /// Because available time zones depend on the system Vikunja is running on, this endpoint returns a project of all valid time zones this particular Vikunja instance can handle. The project of time zones is not sorted, you should sort it on the client.
  Future<List<String>?> userTimezonesGet() async {
    final response = await userTimezonesGetWithHttpInfo();
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

  /// Renew user token
  ///
  /// Returns a new valid jwt user token with an extended length.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userTokenPostWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/token';

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

  /// Renew user token
  ///
  /// Returns a new valid jwt user token with an extended length.
  Future<AuthToken?> userTokenPost() async {
    final response = await userTokenPostWithHttpInfo();
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

  /// User Avatar
  ///
  /// Returns the user avatar as image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username of the user who's avatar you want to get
  ///
  /// * [int] size:
  ///   The size of the avatar you want to get. If bigger than the max configured size this will be adjusted to the maximum size.
  Future<Response> usernameAvatarGetWithHttpInfo(String username, { int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/{username}/avatar'
      .replaceAll('{username}', username);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
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

  /// User Avatar
  ///
  /// Returns the user avatar as image.
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  ///   The username of the user who's avatar you want to get
  ///
  /// * [int] size:
  ///   The size of the avatar you want to get. If bigger than the max configured size this will be adjusted to the maximum size.
  Future<MultipartFile?> usernameAvatarGet(String username, { int? size, }) async {
    final response = await usernameAvatarGetWithHttpInfo(username,  size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get users
  ///
  /// Search for a user by its username, name or full email. Name (not username) or email require that the user has enabled this in their settings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] s:
  ///   The search criteria.
  Future<Response> usersGetWithHttpInfo({ String? s, }) async {
    // ignore: prefer_const_declarations
    final path = r'/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get users
  ///
  /// Search for a user by its username, name or full email. Name (not username) or email require that the user has enabled this in their settings.
  ///
  /// Parameters:
  ///
  /// * [String] s:
  ///   The search criteria.
  Future<List<UserUser>?> usersGet({ String? s, }) async {
    final response = await usersGetWithHttpInfo( s: s, );
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
