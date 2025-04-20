//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TaskApi {
  TaskApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Removes the user's reaction
  ///
  /// Removes the reaction of that user on that entity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Entity ID
  ///
  /// * [int] kind (required):
  ///   The kind of the entity. Can be either `tasks` or `comments` for task comments
  ///
  /// * [ModelsReaction] project (required):
  ///   The reaction you want to add to the entity.
  Future<Response> kindIdReactionsDeletePostWithHttpInfo(int id, int kind, ModelsReaction project,) async {
    // ignore: prefer_const_declarations
    final path = r'/{kind}/{id}/reactions/delete'
      .replaceAll('{id}', id.toString())
      .replaceAll('{kind}', kind.toString());

    // ignore: prefer_final_locals
    Object? postBody = project;

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

  /// Removes the user's reaction
  ///
  /// Removes the reaction of that user on that entity.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Entity ID
  ///
  /// * [int] kind (required):
  ///   The kind of the entity. Can be either `tasks` or `comments` for task comments
  ///
  /// * [ModelsReaction] project (required):
  ///   The reaction you want to add to the entity.
  Future<ModelsMessage?> kindIdReactionsDeletePost(int id, int kind, ModelsReaction project,) async {
    final response = await kindIdReactionsDeletePostWithHttpInfo(id, kind, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsMessage',
      ) as ModelsMessage;
    }
    return null;
  }

  /// Get all reactions for an entity
  ///
  /// Returns all reactions for an entity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Entity ID
  ///
  /// * [int] kind (required):
  ///   The kind of the entity. Can be either `tasks` or `comments` for task comments
  Future<Response> kindIdReactionsGetWithHttpInfo(int id, int kind,) async {
    // ignore: prefer_const_declarations
    final path = r'/{kind}/{id}/reactions'
      .replaceAll('{id}', id.toString())
      .replaceAll('{kind}', kind.toString());

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

  /// Get all reactions for an entity
  ///
  /// Returns all reactions for an entity
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Entity ID
  ///
  /// * [int] kind (required):
  ///   The kind of the entity. Can be either `tasks` or `comments` for task comments
  Future<List<Map<String, List<UserUser>>>?> kindIdReactionsGet(int id, int kind,) async {
    final response = await kindIdReactionsGetWithHttpInfo(id, kind,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      // Deserialize to List<dynamic> first
      final dynamicList =
          await apiClient.deserializeAsync(responseBody, 'List') as List;
      // Manually map to the correct nested type
      return dynamicList.map((item) {
        if (item is Map) {
          // Use mapListFromJson helper which expects Map<String, dynamic>
          // where the dynamic value is a list that listFromJson can handle.
          return UserUser.mapListFromJson(item.cast<String, dynamic>());
        } else {
          throw ApiException(
              0, 'Unexpected item type in reactions list: ${item.runtimeType}');
        }
      }).toList(growable: false);
    }
    return null;
  }

  /// Add a reaction to an entity
  ///
  /// Add a reaction to an entity. Will do nothing if the reaction already exists.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Entity ID
  ///
  /// * [int] kind (required):
  ///   The kind of the entity. Can be either `tasks` or `comments` for task comments
  ///
  /// * [ModelsReaction] project (required):
  ///   The reaction you want to add to the entity.
  Future<Response> kindIdReactionsPutWithHttpInfo(int id, int kind, ModelsReaction project,) async {
    // ignore: prefer_const_declarations
    final path = r'/{kind}/{id}/reactions'
      .replaceAll('{id}', id.toString())
      .replaceAll('{kind}', kind.toString());

    // ignore: prefer_final_locals
    Object? postBody = project;

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

  /// Add a reaction to an entity
  ///
  /// Add a reaction to an entity. Will do nothing if the reaction already exists.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Entity ID
  ///
  /// * [int] kind (required):
  ///   The kind of the entity. Can be either `tasks` or `comments` for task comments
  ///
  /// * [ModelsReaction] project (required):
  ///   The reaction you want to add to the entity.
  Future<ModelsReaction?> kindIdReactionsPut(int id, int kind, ModelsReaction project,) async {
    final response = await kindIdReactionsPutWithHttpInfo(id, kind, project,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsReaction',
      ) as ModelsReaction;
    }
    return null;
  }

  /// Create a task
  ///
  /// Inserts a task into a project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [ModelsTask] task (required):
  ///   The task object
  Future<Response> projectsIdTasksPutWithHttpInfo(int id, ModelsTask task,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/tasks'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = task;

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

  /// Create a task
  ///
  /// Inserts a task into a project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project ID
  ///
  /// * [ModelsTask] task (required):
  ///   The task object
  Future<ModelsTask?> projectsIdTasksPut(int id, ModelsTask task,) async {
    final response = await projectsIdTasksPutWithHttpInfo(id, task,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsTask',
      ) as ModelsTask;
    }
    return null;
  }

  /// Get tasks in a project
  ///
  /// Returns all tasks for the current project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The project ID.
  ///
  /// * [int] view (required):
  ///   The project view ID.
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search tasks by task text.
  ///
  /// * [String] sortBy:
  ///   The sorting parameter. You can pass this multiple times to get the tasks ordered by multiple different parametes, along with `order_by`. Possible values to sort by are `id`, `title`, `description`, `done`, `done_at`, `due_date`, `created_by_id`, `project_id`, `repeat_after`, `priority`, `start_date`, `end_date`, `hex_color`, `percent_done`, `uid`, `created`, `updated`. Default is `id`.
  ///
  /// * [String] orderBy:
  ///   The ordering parameter. Possible values to order by are `asc` or `desc`. Default is `asc`.
  ///
  /// * [String] filter:
  ///   The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation of the feature.
  ///
  /// * [String] filterTimezone:
  ///   The time zone which should be used for date match (statements like 
  ///
  /// * [String] filterIncludeNulls:
  ///   If set to true the result will include filtered fields whose value is set to `null`. Available values are `true` or `false`. Defaults to `false`.
  ///
  /// * [String] expand:
  ///   If set to `subtasks`, Vikunja will fetch only tasks which do not have subtasks and then in a second step, will fetch all of these subtasks. This may result in more tasks than the pagination limit being returned, but all subtasks will be present in the response. You can only set this to `subtasks`.
  Future<Response> projectsIdViewsViewTasksGetWithHttpInfo(int id, int view, { int? page, int? perPage, String? s, String? sortBy, String? orderBy, String? filter, String? filterTimezone, String? filterIncludeNulls, String? expand, }) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{id}/views/{view}/tasks'
      .replaceAll('{id}', id.toString())
      .replaceAll('{view}', view.toString());

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
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sort_by', sortBy));
    }
    if (orderBy != null) {
      queryParams.addAll(_queryParams('', 'order_by', orderBy));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (filterTimezone != null) {
      queryParams.addAll(_queryParams('', 'filter_timezone', filterTimezone));
    }
    if (filterIncludeNulls != null) {
      queryParams.addAll(_queryParams('', 'filter_include_nulls', filterIncludeNulls));
    }
    if (expand != null) {
      queryParams.addAll(_queryParams('', 'expand', expand));
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

  /// Get tasks in a project
  ///
  /// Returns all tasks for the current project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The project ID.
  ///
  /// * [int] view (required):
  ///   The project view ID.
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  ///
  /// * [String] s:
  ///   Search tasks by task text.
  ///
  /// * [String] sortBy:
  ///   The sorting parameter. You can pass this multiple times to get the tasks ordered by multiple different parametes, along with `order_by`. Possible values to sort by are `id`, `title`, `description`, `done`, `done_at`, `due_date`, `created_by_id`, `project_id`, `repeat_after`, `priority`, `start_date`, `end_date`, `hex_color`, `percent_done`, `uid`, `created`, `updated`. Default is `id`.
  ///
  /// * [String] orderBy:
  ///   The ordering parameter. Possible values to order by are `asc` or `desc`. Default is `asc`.
  ///
  /// * [String] filter:
  ///   The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation of the feature.
  ///
  /// * [String] filterTimezone:
  ///   The time zone which should be used for date match (statements like 
  ///
  /// * [String] filterIncludeNulls:
  ///   If set to true the result will include filtered fields whose value is set to `null`. Available values are `true` or `false`. Defaults to `false`.
  ///
  /// * [String] expand:
  ///   If set to `subtasks`, Vikunja will fetch only tasks which do not have subtasks and then in a second step, will fetch all of these subtasks. This may result in more tasks than the pagination limit being returned, but all subtasks will be present in the response. You can only set this to `subtasks`.
  Future<List<ModelsTask>?> projectsIdViewsViewTasksGet(int id, int view, { int? page, int? perPage, String? s, String? sortBy, String? orderBy, String? filter, String? filterTimezone, String? filterIncludeNulls, String? expand, }) async {
    final response = await projectsIdViewsViewTasksGetWithHttpInfo(id, view,  page: page, perPage: perPage, s: s, sortBy: sortBy, orderBy: orderBy, filter: filter, filterTimezone: filterTimezone, filterIncludeNulls: filterIncludeNulls, expand: expand, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsTask>') as List)
        .cast<ModelsTask>()
          .toList(growable: false);
    }
    return null;
  }

  /// Update a task bucket
  ///
  /// Updates a task in a bucket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] view (required):
  ///   Project View ID
  ///
  /// * [int] bucket (required):
  ///   Bucket ID
  ///
  /// * [ModelsTaskBucket] taskBucket (required):
  ///   The id of the task you want to move into the bucket.
  Future<Response> projectsProjectViewsViewBucketsBucketTasksPostWithHttpInfo(int project, int view, int bucket, ModelsTaskBucket taskBucket,) async {
    // ignore: prefer_const_declarations
    final path = r'/projects/{project}/views/{view}/buckets/{bucket}/tasks'
      .replaceAll('{project}', project.toString())
      .replaceAll('{view}', view.toString())
      .replaceAll('{bucket}', bucket.toString());

    // ignore: prefer_final_locals
    Object? postBody = taskBucket;

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

  /// Update a task bucket
  ///
  /// Updates a task in a bucket
  ///
  /// Parameters:
  ///
  /// * [int] project (required):
  ///   Project ID
  ///
  /// * [int] view (required):
  ///   Project View ID
  ///
  /// * [int] bucket (required):
  ///   Bucket ID
  ///
  /// * [ModelsTaskBucket] taskBucket (required):
  ///   The id of the task you want to move into the bucket.
  Future<ModelsTaskBucket?> projectsProjectViewsViewBucketsBucketTasksPost(int project, int view, int bucket, ModelsTaskBucket taskBucket,) async {
    final response = await projectsProjectViewsViewBucketsBucketTasksPostWithHttpInfo(project, view, bucket, taskBucket,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsTaskBucket',
      ) as ModelsTaskBucket;
    }
    return null;
  }

  /// Get tasks
  ///
  /// Returns all tasks on any project the user has access to.
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
  ///   Search tasks by task text.
  ///
  /// * [String] sortBy:
  ///   The sorting parameter. You can pass this multiple times to get the tasks ordered by multiple different parametes, along with `order_by`. Possible values to sort by are `id`, `title`, `description`, `done`, `done_at`, `due_date`, `created_by_id`, `project_id`, `repeat_after`, `priority`, `start_date`, `end_date`, `hex_color`, `percent_done`, `uid`, `created`, `updated`. Default is `id`.
  ///
  /// * [String] orderBy:
  ///   The ordering parameter. Possible values to order by are `asc` or `desc`. Default is `asc`.
  ///
  /// * [String] filter:
  ///   The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation of the feature.
  ///
  /// * [String] filterTimezone:
  ///   The time zone which should be used for date match (statements like 
  ///
  /// * [String] filterIncludeNulls:
  ///   If set to true the result will include filtered fields whose value is set to `null`. Available values are `true` or `false`. Defaults to `false`.
  ///
  /// * [String] expand:
  ///   If set to `subtasks`, Vikunja will fetch only tasks which do not have subtasks and then in a second step, will fetch all of these subtasks. This may result in more tasks than the pagination limit being returned, but all subtasks will be present in the response. You can only set this to `subtasks`.
  Future<Response> tasksAllGetWithHttpInfo({ int? page, int? perPage, String? s, String? sortBy, String? orderBy, String? filter, String? filterTimezone, String? filterIncludeNulls, String? expand, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/all';

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
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sort_by', sortBy));
    }
    if (orderBy != null) {
      queryParams.addAll(_queryParams('', 'order_by', orderBy));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (filterTimezone != null) {
      queryParams.addAll(_queryParams('', 'filter_timezone', filterTimezone));
    }
    if (filterIncludeNulls != null) {
      queryParams.addAll(_queryParams('', 'filter_include_nulls', filterIncludeNulls));
    }
    if (expand != null) {
      queryParams.addAll(_queryParams('', 'expand', expand));
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

  /// Get tasks
  ///
  /// Returns all tasks on any project the user has access to.
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
  ///   Search tasks by task text.
  ///
  /// * [String] sortBy:
  ///   The sorting parameter. You can pass this multiple times to get the tasks ordered by multiple different parametes, along with `order_by`. Possible values to sort by are `id`, `title`, `description`, `done`, `done_at`, `due_date`, `created_by_id`, `project_id`, `repeat_after`, `priority`, `start_date`, `end_date`, `hex_color`, `percent_done`, `uid`, `created`, `updated`. Default is `id`.
  ///
  /// * [String] orderBy:
  ///   The ordering parameter. Possible values to order by are `asc` or `desc`. Default is `asc`.
  ///
  /// * [String] filter:
  ///   The filter query to match tasks by. Check out https://vikunja.io/docs/filters for a full explanation of the feature.
  ///
  /// * [String] filterTimezone:
  ///   The time zone which should be used for date match (statements like 
  ///
  /// * [String] filterIncludeNulls:
  ///   If set to true the result will include filtered fields whose value is set to `null`. Available values are `true` or `false`. Defaults to `false`.
  ///
  /// * [String] expand:
  ///   If set to `subtasks`, Vikunja will fetch only tasks which do not have subtasks and then in a second step, will fetch all of these subtasks. This may result in more tasks than the pagination limit being returned, but all subtasks will be present in the response. You can only set this to `subtasks`.
  Future<List<ModelsTask>?> tasksAllGet({ int? page, int? perPage, String? s, String? sortBy, String? orderBy, String? filter, String? filterTimezone, String? filterIncludeNulls, String? expand, }) async {
    final response = await tasksAllGetWithHttpInfo( page: page, perPage: perPage, s: s, sortBy: sortBy, orderBy: orderBy, filter: filter, filterTimezone: filterTimezone, filterIncludeNulls: filterIncludeNulls, expand: expand, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsTask>') as List)
        .cast<ModelsTask>()
          .toList(growable: false);
    }
    return null;
  }

  /// Update a bunch of tasks at once
  ///
  /// Updates a bunch of tasks at once. This includes marking them as done. Note: although you could supply another ID, it will be ignored. Use task_ids instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ModelsBulkTask] task (required):
  ///   The task object. Looks like a normal task, the only difference is it uses an array of project_ids to update.
  Future<Response> tasksBulkPostWithHttpInfo(ModelsBulkTask task,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/bulk';

    // ignore: prefer_final_locals
    Object? postBody = task;

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

  /// Update a bunch of tasks at once
  ///
  /// Updates a bunch of tasks at once. This includes marking them as done. Note: although you could supply another ID, it will be ignored. Use task_ids instead.
  ///
  /// Parameters:
  ///
  /// * [ModelsBulkTask] task (required):
  ///   The task object. Looks like a normal task, the only difference is it uses an array of project_ids to update.
  Future<ModelsTask?> tasksBulkPost(ModelsBulkTask task,) async {
    final response = await tasksBulkPostWithHttpInfo(task,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsTask',
      ) as ModelsTask;
    }
    return null;
  }

  /// Delete an attachment
  ///
  /// Delete an attachment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  ///
  /// * [int] attachmentID (required):
  ///   Attachment ID
  Future<Response> tasksIdAttachmentsAttachmentIDDeleteWithHttpInfo(int id, int attachmentID,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{id}/attachments/{attachmentID}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{attachmentID}', attachmentID.toString());

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

  /// Delete an attachment
  ///
  /// Delete an attachment.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  ///
  /// * [int] attachmentID (required):
  ///   Attachment ID
  Future<ModelsMessage?> tasksIdAttachmentsAttachmentIDDelete(int id, int attachmentID,) async {
    final response = await tasksIdAttachmentsAttachmentIDDeleteWithHttpInfo(id, attachmentID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsMessage',
      ) as ModelsMessage;
    }
    return null;
  }

  /// Get one attachment.
  ///
  /// Get one attachment for download. **Returns json on error.**
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  ///
  /// * [int] attachmentID (required):
  ///   Attachment ID
  ///
  /// * [String] previewSize:
  ///   The size of the preview image. Can be sm = 100px, md = 200px, lg = 400px or xl = 800px. If provided, a preview image will be returned if the attachment is an image.
  Future<Response> tasksIdAttachmentsAttachmentIDGetWithHttpInfo(int id, int attachmentID, { String? previewSize, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{id}/attachments/{attachmentID}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{attachmentID}', attachmentID.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (previewSize != null) {
      queryParams.addAll(_queryParams('', 'preview_size', previewSize));
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

  /// Get one attachment.
  ///
  /// Get one attachment for download. **Returns json on error.**
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  ///
  /// * [int] attachmentID (required):
  ///   Attachment ID
  ///
  /// * [String] previewSize:
  ///   The size of the preview image. Can be sm = 100px, md = 200px, lg = 400px or xl = 800px. If provided, a preview image will be returned if the attachment is an image.
  Future<MultipartFile?> tasksIdAttachmentsAttachmentIDGet(int id, int attachmentID, { String? previewSize, }) async {
    final response = await tasksIdAttachmentsAttachmentIDGetWithHttpInfo(id, attachmentID,  previewSize: previewSize, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'MultipartFile',
      ) as MultipartFile;
    }
    return null;
  }

  /// Get  all attachments for one task.
  ///
  /// Get all task attachments for one task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  Future<Response> tasksIdAttachmentsGetWithHttpInfo(int id, { int? page, int? perPage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{id}/attachments'
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

  /// Get  all attachments for one task.
  ///
  /// Get all task attachments for one task.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  ///
  /// * [int] page:
  ///   The page number. Used for pagination. If not provided, the first page of results is returned.
  ///
  /// * [int] perPage:
  ///   The maximum number of items per page. Note this parameter is limited by the configured maximum of items per page.
  Future<List<ModelsTaskAttachment>?> tasksIdAttachmentsGet(int id, { int? page, int? perPage, }) async {
    final response = await tasksIdAttachmentsGetWithHttpInfo(id,  page: page, perPage: perPage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsTaskAttachment>') as List)
        .cast<ModelsTaskAttachment>()
          .toList(growable: false);
    }
    return null;
  }

  /// Upload a task attachment
  ///
  /// Upload a task attachment. You can pass multiple files with the files form param.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  ///
  /// * [String] files (required):
  ///   The file, as multipart form file. You can pass multiple.
  Future<Response> tasksIdAttachmentsPutWithHttpInfo(int id, String files,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{id}/attachments'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('PUT', Uri.parse(path));
    if (files != null) {
      hasFields = true;
      mp.fields[r'files'] = parameterToString(files);
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

  /// Upload a task attachment
  ///
  /// Upload a task attachment. You can pass multiple files with the files form param.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  ///
  /// * [String] files (required):
  ///   The file, as multipart form file. You can pass multiple.
  Future<ModelsMessage?> tasksIdAttachmentsPut(int id, String files,) async {
    final response = await tasksIdAttachmentsPutWithHttpInfo(id, files,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsMessage',
      ) as ModelsMessage;
    }
    return null;
  }

  /// Delete a task
  ///
  /// Deletes a task from a project. This does not mean \"mark it done\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  Future<Response> tasksIdDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{id}'
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

  /// Delete a task
  ///
  /// Deletes a task from a project. This does not mean \"mark it done\".
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  Future<ModelsMessage?> tasksIdDelete(int id,) async {
    final response = await tasksIdDeleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsMessage',
      ) as ModelsMessage;
    }
    return null;
  }

  /// Get one task
  ///
  /// Returns one task by its ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The task ID
  Future<Response> tasksIdGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{id}'
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

  /// Get one task
  ///
  /// Returns one task by its ID
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The task ID
  Future<ModelsTask?> tasksIdGet(int id,) async {
    final response = await tasksIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsTask',
      ) as ModelsTask;
    }
    return null;
  }

  /// Updates a task position
  ///
  /// Updates a task position.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  ///
  /// * [ModelsTaskPosition] view (required):
  ///   The task position with updated values you want to change.
  Future<Response> tasksIdPositionPostWithHttpInfo(int id, ModelsTaskPosition view,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{id}/position'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = view;

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

  /// Updates a task position
  ///
  /// Updates a task position.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Task ID
  ///
  /// * [ModelsTaskPosition] view (required):
  ///   The task position with updated values you want to change.
  Future<ModelsTaskPosition?> tasksIdPositionPost(int id, ModelsTaskPosition view,) async {
    final response = await tasksIdPositionPostWithHttpInfo(id, view,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsTaskPosition',
      ) as ModelsTaskPosition;
    }
    return null;
  }

  /// Update a task
  ///
  /// Updates a task. This includes marking it as done. Assignees you pass will be updated, see their individual endpoints for more details on how this is done. To update labels, see the description of the endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The Task ID
  ///
  /// * [ModelsTask] task (required):
  ///   The task object
  Future<Response> tasksIdPostWithHttpInfo(int id, ModelsTask task,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = task;

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

  /// Update a task
  ///
  /// Updates a task. This includes marking it as done. Assignees you pass will be updated, see their individual endpoints for more details on how this is done. To update labels, see the description of the endpoint.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The Task ID
  ///
  /// * [ModelsTask] task (required):
  ///   The task object
  Future<ModelsTask?> tasksIdPost(int id, ModelsTask task,) async {
    final response = await tasksIdPostWithHttpInfo(id, task,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsTask',
      ) as ModelsTask;
    }
    return null;
  }

  /// Remove a task comment
  ///
  /// Remove a task comment. The user doing this need to have at least write access to the task this comment belongs to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [int] commentID (required):
  ///   Comment ID
  Future<Response> tasksTaskIDCommentsCommentIDDeleteWithHttpInfo(int taskID, int commentID,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/comments/{commentID}'
      .replaceAll('{taskID}', taskID.toString())
      .replaceAll('{commentID}', commentID.toString());

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

  /// Remove a task comment
  ///
  /// Remove a task comment. The user doing this need to have at least write access to the task this comment belongs to.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [int] commentID (required):
  ///   Comment ID
  Future<ModelsMessage?> tasksTaskIDCommentsCommentIDDelete(int taskID, int commentID,) async {
    final response = await tasksTaskIDCommentsCommentIDDeleteWithHttpInfo(taskID, commentID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsMessage',
      ) as ModelsMessage;
    }
    return null;
  }

  /// Remove a task comment
  ///
  /// Remove a task comment. The user doing this need to have at least read access to the task this comment belongs to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [int] commentID (required):
  ///   Comment ID
  Future<Response> tasksTaskIDCommentsCommentIDGetWithHttpInfo(int taskID, int commentID,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/comments/{commentID}'
      .replaceAll('{taskID}', taskID.toString())
      .replaceAll('{commentID}', commentID.toString());

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

  /// Remove a task comment
  ///
  /// Remove a task comment. The user doing this need to have at least read access to the task this comment belongs to.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [int] commentID (required):
  ///   Comment ID
  Future<ModelsTaskComment?> tasksTaskIDCommentsCommentIDGet(int taskID, int commentID,) async {
    final response = await tasksTaskIDCommentsCommentIDGetWithHttpInfo(taskID, commentID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsTaskComment',
      ) as ModelsTaskComment;
    }
    return null;
  }

  /// Update an existing task comment
  ///
  /// Update an existing task comment. The user doing this need to have at least write access to the task this comment belongs to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [int] commentID (required):
  ///   Comment ID
  Future<Response> tasksTaskIDCommentsCommentIDPostWithHttpInfo(int taskID, int commentID,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/comments/{commentID}'
      .replaceAll('{taskID}', taskID.toString())
      .replaceAll('{commentID}', commentID.toString());

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

  /// Update an existing task comment
  ///
  /// Update an existing task comment. The user doing this need to have at least write access to the task this comment belongs to.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [int] commentID (required):
  ///   Comment ID
  Future<ModelsTaskComment?> tasksTaskIDCommentsCommentIDPost(int taskID, int commentID,) async {
    final response = await tasksTaskIDCommentsCommentIDPostWithHttpInfo(taskID, commentID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsTaskComment',
      ) as ModelsTaskComment;
    }
    return null;
  }

  /// Get all task comments
  ///
  /// Get all task comments. The user doing this need to have at least read access to the task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  Future<Response> tasksTaskIDCommentsGetWithHttpInfo(int taskID,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/comments'
      .replaceAll('{taskID}', taskID.toString());

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

  /// Get all task comments
  ///
  /// Get all task comments. The user doing this need to have at least read access to the task.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  Future<List<ModelsTaskComment>?> tasksTaskIDCommentsGet(int taskID,) async {
    final response = await tasksTaskIDCommentsGetWithHttpInfo(taskID,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsTaskComment>') as List)
        .cast<ModelsTaskComment>()
          .toList(growable: false);
    }
    return null;
  }

  /// Create a new task comment
  ///
  /// Create a new task comment. The user doing this need to have at least write access to the task this comment should belong to.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [ModelsTaskComment] relation (required):
  ///   The task comment object
  Future<Response> tasksTaskIDCommentsPutWithHttpInfo(int taskID, ModelsTaskComment relation,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/comments'
      .replaceAll('{taskID}', taskID.toString());

    // ignore: prefer_final_locals
    Object? postBody = relation;

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

  /// Create a new task comment
  ///
  /// Create a new task comment. The user doing this need to have at least write access to the task this comment should belong to.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [ModelsTaskComment] relation (required):
  ///   The task comment object
  Future<ModelsTaskComment?> tasksTaskIDCommentsPut(int taskID, ModelsTaskComment relation,) async {
    final response = await tasksTaskIDCommentsPutWithHttpInfo(taskID, relation,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsTaskComment',
      ) as ModelsTaskComment;
    }
    return null;
  }

  /// Create a new relation between two tasks
  ///
  /// Creates a new relation between two tasks. The user needs to have update rights on the base task and at least read rights on the other task. Both tasks do not need to be on the same project. Take a look at the docs for available task relation kinds.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [ModelsTaskRelation] relation (required):
  ///   The relation object
  Future<Response> tasksTaskIDRelationsPutWithHttpInfo(int taskID, ModelsTaskRelation relation,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/relations'
      .replaceAll('{taskID}', taskID.toString());

    // ignore: prefer_final_locals
    Object? postBody = relation;

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

  /// Create a new relation between two tasks
  ///
  /// Creates a new relation between two tasks. The user needs to have update rights on the base task and at least read rights on the other task. Both tasks do not need to be on the same project. Take a look at the docs for available task relation kinds.
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [ModelsTaskRelation] relation (required):
  ///   The relation object
  Future<ModelsTaskRelation?> tasksTaskIDRelationsPut(int taskID, ModelsTaskRelation relation,) async {
    final response = await tasksTaskIDRelationsPutWithHttpInfo(taskID, relation,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsTaskRelation',
      ) as ModelsTaskRelation;
    }
    return null;
  }

  /// Remove a task relation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [String] relationKind (required):
  ///   The kind of the relation. See the TaskRelation type for more info.
  ///
  /// * [int] otherTaskID (required):
  ///   The id of the other task.
  ///
  /// * [ModelsTaskRelation] relation (required):
  ///   The relation object
  Future<Response> tasksTaskIDRelationsRelationKindOtherTaskIDDeleteWithHttpInfo(int taskID, String relationKind, int otherTaskID, ModelsTaskRelation relation,) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{taskID}/relations/{relationKind}/{otherTaskID}'
      .replaceAll('{taskID}', taskID.toString())
      .replaceAll('{relationKind}', relationKind)
      .replaceAll('{otherTaskID}', otherTaskID.toString());

    // ignore: prefer_final_locals
    Object? postBody = relation;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

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

  /// Remove a task relation
  ///
  /// Parameters:
  ///
  /// * [int] taskID (required):
  ///   Task ID
  ///
  /// * [String] relationKind (required):
  ///   The kind of the relation. See the TaskRelation type for more info.
  ///
  /// * [int] otherTaskID (required):
  ///   The id of the other task.
  ///
  /// * [ModelsTaskRelation] relation (required):
  ///   The relation object
  Future<ModelsMessage?> tasksTaskIDRelationsRelationKindOtherTaskIDDelete(int taskID, String relationKind, int otherTaskID, ModelsTaskRelation relation,) async {
    final response = await tasksTaskIDRelationsRelationKindOtherTaskIDDeleteWithHttpInfo(taskID, relationKind, otherTaskID, relation,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ModelsMessage',
      ) as ModelsMessage;
    }
    return null;
  }
}
