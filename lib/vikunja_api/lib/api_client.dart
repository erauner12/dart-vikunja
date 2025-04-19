//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = '/api/v1', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AuthToken':
          return AuthToken.fromJson(value);
        case 'BackgroundImage':
          return BackgroundImage.fromJson(value);
        case 'FilesFile':
          return FilesFile.fromJson(value);
        case 'HandlerAuthURL':
          return HandlerAuthURL.fromJson(value);
        case 'MicrosofttodoMigration':
          return MicrosofttodoMigration.fromJson(value);
        case 'MigrationStatus':
          return MigrationStatus.fromJson(value);
        case 'ModelsAPIToken':
          return ModelsAPIToken.fromJson(value);
        case 'ModelsBucket':
          return ModelsBucket.fromJson(value);
        case 'ModelsBucketConfigurationModeKind':
          return ModelsBucketConfigurationModeKindTypeTransformer().decode(value);
        case 'ModelsBulkAssignees':
          return ModelsBulkAssignees.fromJson(value);
        case 'ModelsBulkTask':
          return ModelsBulkTask.fromJson(value);
        case 'ModelsDatabaseNotifications':
          return ModelsDatabaseNotifications.fromJson(value);
        case 'ModelsLabel':
          return ModelsLabel.fromJson(value);
        case 'ModelsLabelTask':
          return ModelsLabelTask.fromJson(value);
        case 'ModelsLabelTaskBulk':
          return ModelsLabelTaskBulk.fromJson(value);
        case 'ModelsLinkSharing':
          return ModelsLinkSharing.fromJson(value);
        case 'ModelsMessage':
          return ModelsMessage.fromJson(value);
        case 'ModelsProject':
          return ModelsProject.fromJson(value);
        case 'ModelsProjectDuplicate':
          return ModelsProjectDuplicate.fromJson(value);
        case 'ModelsProjectUser':
          return ModelsProjectUser.fromJson(value);
        case 'ModelsProjectView':
          return ModelsProjectView.fromJson(value);
        case 'ModelsProjectViewBucketConfiguration':
          return ModelsProjectViewBucketConfiguration.fromJson(value);
        case 'ModelsProjectViewKind':
          return ModelsProjectViewKindTypeTransformer().decode(value);
        case 'ModelsReaction':
          return ModelsReaction.fromJson(value);
        case 'ModelsRelationKind':
          return ModelsRelationKindTypeTransformer().decode(value);
        case 'ModelsReminderRelation':
          return ModelsReminderRelationTypeTransformer().decode(value);
        case 'ModelsRight':
          return ModelsRightTypeTransformer().decode(value);
        case 'ModelsRouteDetail':
          return ModelsRouteDetail.fromJson(value);
        case 'ModelsSavedFilter':
          return ModelsSavedFilter.fromJson(value);
        case 'ModelsSharingType':
          return ModelsSharingTypeTypeTransformer().decode(value);
        case 'ModelsSubscription':
          return ModelsSubscription.fromJson(value);
        case 'ModelsTask':
          return ModelsTask.fromJson(value);
        case 'ModelsTaskAssginee':
          return ModelsTaskAssginee.fromJson(value);
        case 'ModelsTaskAttachment':
          return ModelsTaskAttachment.fromJson(value);
        case 'ModelsTaskBucket':
          return ModelsTaskBucket.fromJson(value);
        case 'ModelsTaskCollection':
          return ModelsTaskCollection.fromJson(value);
        case 'ModelsTaskComment':
          return ModelsTaskComment.fromJson(value);
        case 'ModelsTaskPosition':
          return ModelsTaskPosition.fromJson(value);
        case 'ModelsTaskRelation':
          return ModelsTaskRelation.fromJson(value);
        case 'ModelsTaskReminder':
          return ModelsTaskReminder.fromJson(value);
        case 'ModelsTaskRepeatMode':
          return ModelsTaskRepeatModeTypeTransformer().decode(value);
        case 'ModelsTeam':
          return ModelsTeam.fromJson(value);
        case 'ModelsTeamMember':
          return ModelsTeamMember.fromJson(value);
        case 'ModelsTeamProject':
          return ModelsTeamProject.fromJson(value);
        case 'ModelsTeamUser':
          return ModelsTeamUser.fromJson(value);
        case 'ModelsTeamWithRight':
          return ModelsTeamWithRight.fromJson(value);
        case 'ModelsUserWithRight':
          return ModelsUserWithRight.fromJson(value);
        case 'ModelsWebhook':
          return ModelsWebhook.fromJson(value);
        case 'NotificationsDatabaseNotification':
          return NotificationsDatabaseNotification.fromJson(value);
        case 'OpenidCallback':
          return OpenidCallback.fromJson(value);
        case 'OpenidProvider':
          return OpenidProvider.fromJson(value);
        case 'TodoistMigration':
          return TodoistMigration.fromJson(value);
        case 'TrelloMigration':
          return TrelloMigration.fromJson(value);
        case 'UserAPIUserPassword':
          return UserAPIUserPassword.fromJson(value);
        case 'UserEmailConfirm':
          return UserEmailConfirm.fromJson(value);
        case 'UserEmailUpdate':
          return UserEmailUpdate.fromJson(value);
        case 'UserLogin':
          return UserLogin.fromJson(value);
        case 'UserPasswordReset':
          return UserPasswordReset.fromJson(value);
        case 'UserPasswordTokenRequest':
          return UserPasswordTokenRequest.fromJson(value);
        case 'UserTOTP':
          return UserTOTP.fromJson(value);
        case 'UserTOTPPasscode':
          return UserTOTPPasscode.fromJson(value);
        case 'UserToken':
          return UserToken.fromJson(value);
        case 'UserUser':
          return UserUser.fromJson(value);
        case 'V1AuthInfo':
          return V1AuthInfo.fromJson(value);
        case 'V1LegalInfo':
          return V1LegalInfo.fromJson(value);
        case 'V1LinkShareAuth':
          return V1LinkShareAuth.fromJson(value);
        case 'V1LocalAuthInfo':
          return V1LocalAuthInfo.fromJson(value);
        case 'V1OpenIDAuthInfo':
          return V1OpenIDAuthInfo.fromJson(value);
        case 'V1UserAvatarProvider':
          return V1UserAvatarProvider.fromJson(value);
        case 'V1UserDeletionRequestConfirm':
          return V1UserDeletionRequestConfirm.fromJson(value);
        case 'V1UserPassword':
          return V1UserPassword.fromJson(value);
        case 'V1UserPasswordConfirmation':
          return V1UserPasswordConfirmation.fromJson(value);
        case 'V1UserSettings':
          return V1UserSettings.fromJson(value);
        case 'V1UserWithSettings':
          return V1UserWithSettings.fromJson(value);
        case 'V1VikunjaInfos':
          return V1VikunjaInfos.fromJson(value);
        case 'WebHTTPError':
          return WebHTTPError.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
