//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/api_api.dart';
part 'api/assignees_api.dart';
part 'api/auth_api.dart';
part 'api/filter_api.dart';
part 'api/labels_api.dart';
part 'api/migration_api.dart';
part 'api/project_api.dart';
part 'api/service_api.dart';
part 'api/sharing_api.dart';
part 'api/subscriptions_api.dart';
part 'api/task_api.dart';
part 'api/team_api.dart';
part 'api/testing_api.dart';
part 'api/user_api.dart';
part 'api/webhooks_api.dart';

part 'model/auth_token.dart';
part 'model/background_image.dart';
part 'model/files_file.dart';
part 'model/handler_auth_url.dart';
part 'model/microsofttodo_migration.dart';
part 'model/migration_status.dart';
part 'model/models_api_token.dart';
part 'model/models_bucket.dart';
part 'model/models_bucket_configuration_mode_kind.dart';
part 'model/models_bulk_assignees.dart';
part 'model/models_bulk_task.dart';
part 'model/models_database_notifications.dart';
part 'model/models_label.dart';
part 'model/models_label_task.dart';
part 'model/models_label_task_bulk.dart';
part 'model/models_link_sharing.dart';
part 'model/models_message.dart';
part 'model/models_project.dart';
part 'model/models_project_duplicate.dart';
part 'model/models_project_user.dart';
part 'model/models_project_view.dart';
part 'model/models_project_view_bucket_configuration.dart';
part 'model/models_project_view_kind.dart';
part 'model/models_reaction.dart';
part 'model/models_relation_kind.dart';
part 'model/models_reminder_relation.dart';
part 'model/models_right.dart';
part 'model/models_route_detail.dart';
part 'model/models_saved_filter.dart';
part 'model/models_sharing_type.dart';
part 'model/models_subscription.dart';
part 'model/models_task.dart';
part 'model/models_task_assginee.dart';
part 'model/models_task_attachment.dart';
part 'model/models_task_bucket.dart';
part 'model/models_task_collection.dart';
part 'model/models_task_comment.dart';
part 'model/models_task_position.dart';
part 'model/models_task_relation.dart';
part 'model/models_task_reminder.dart';
part 'model/models_task_repeat_mode.dart';
part 'model/models_team.dart';
part 'model/models_team_member.dart';
part 'model/models_team_project.dart';
part 'model/models_team_user.dart';
part 'model/models_team_with_right.dart';
part 'model/models_user_with_right.dart';
part 'model/models_webhook.dart';
part 'model/notifications_database_notification.dart';
part 'model/openid_callback.dart';
part 'model/openid_provider.dart';
part 'model/todoist_migration.dart';
part 'model/trello_migration.dart';
part 'model/user_api_user_password.dart';
part 'model/user_email_confirm.dart';
part 'model/user_email_update.dart';
part 'model/user_login.dart';
part 'model/user_password_reset.dart';
part 'model/user_password_token_request.dart';
part 'model/user_totp.dart';
part 'model/user_totp_passcode.dart';
part 'model/user_token.dart';
part 'model/user_user.dart';
part 'model/v1_auth_info.dart';
part 'model/v1_legal_info.dart';
part 'model/v1_link_share_auth.dart';
part 'model/v1_local_auth_info.dart';
part 'model/v1_open_id_auth_info.dart';
part 'model/v1_user_avatar_provider.dart';
part 'model/v1_user_deletion_request_confirm.dart';
part 'model/v1_user_password.dart';
part 'model/v1_user_password_confirmation.dart';
part 'model/v1_user_settings.dart';
part 'model/v1_user_with_settings.dart';
part 'model/v1_vikunja_infos.dart';
part 'model/web_http_error.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
