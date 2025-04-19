//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:vikunja_flutter_api/api.dart';
import 'package:test/test.dart';


/// tests for TaskApi
void main() {
  // final instance = TaskApi();

  group('tests for TaskApi', () {
    // Removes the user's reaction
    //
    // Removes the reaction of that user on that entity.
    //
    //Future<ModelsMessage> kindIdReactionsDeletePost(int id, int kind, ModelsReaction project) async
    test('test kindIdReactionsDeletePost', () async {
      // TODO
    });

    // Get all reactions for an entity
    //
    // Returns all reactions for an entity
    //
    //Future<List<Map<String, List<UserUser>>>> kindIdReactionsGet(int id, int kind) async
    test('test kindIdReactionsGet', () async {
      // TODO
    });

    // Add a reaction to an entity
    //
    // Add a reaction to an entity. Will do nothing if the reaction already exists.
    //
    //Future<ModelsReaction> kindIdReactionsPut(int id, int kind, ModelsReaction project) async
    test('test kindIdReactionsPut', () async {
      // TODO
    });

    // Create a task
    //
    // Inserts a task into a project.
    //
    //Future<ModelsTask> projectsIdTasksPut(int id, ModelsTask task) async
    test('test projectsIdTasksPut', () async {
      // TODO
    });

    // Get tasks in a project
    //
    // Returns all tasks for the current project.
    //
    //Future<List<ModelsTask>> projectsIdViewsViewTasksGet(int id, int view, { int page, int perPage, String s, String sortBy, String orderBy, String filter, String filterTimezone, String filterIncludeNulls, String expand }) async
    test('test projectsIdViewsViewTasksGet', () async {
      // TODO
    });

    // Update a task bucket
    //
    // Updates a task in a bucket
    //
    //Future<ModelsTaskBucket> projectsProjectViewsViewBucketsBucketTasksPost(int project, int view, int bucket, ModelsTaskBucket taskBucket) async
    test('test projectsProjectViewsViewBucketsBucketTasksPost', () async {
      // TODO
    });

    // Get tasks
    //
    // Returns all tasks on any project the user has access to.
    //
    //Future<List<ModelsTask>> tasksAllGet({ int page, int perPage, String s, String sortBy, String orderBy, String filter, String filterTimezone, String filterIncludeNulls, String expand }) async
    test('test tasksAllGet', () async {
      // TODO
    });

    // Update a bunch of tasks at once
    //
    // Updates a bunch of tasks at once. This includes marking them as done. Note: although you could supply another ID, it will be ignored. Use task_ids instead.
    //
    //Future<ModelsTask> tasksBulkPost(ModelsBulkTask task) async
    test('test tasksBulkPost', () async {
      // TODO
    });

    // Delete an attachment
    //
    // Delete an attachment.
    //
    //Future<ModelsMessage> tasksIdAttachmentsAttachmentIDDelete(int id, int attachmentID) async
    test('test tasksIdAttachmentsAttachmentIDDelete', () async {
      // TODO
    });

    // Get one attachment.
    //
    // Get one attachment for download. **Returns json on error.**
    //
    //Future<MultipartFile> tasksIdAttachmentsAttachmentIDGet(int id, int attachmentID, { String previewSize }) async
    test('test tasksIdAttachmentsAttachmentIDGet', () async {
      // TODO
    });

    // Get  all attachments for one task.
    //
    // Get all task attachments for one task.
    //
    //Future<List<ModelsTaskAttachment>> tasksIdAttachmentsGet(int id, { int page, int perPage }) async
    test('test tasksIdAttachmentsGet', () async {
      // TODO
    });

    // Upload a task attachment
    //
    // Upload a task attachment. You can pass multiple files with the files form param.
    //
    //Future<ModelsMessage> tasksIdAttachmentsPut(int id, String files) async
    test('test tasksIdAttachmentsPut', () async {
      // TODO
    });

    // Delete a task
    //
    // Deletes a task from a project. This does not mean \"mark it done\".
    //
    //Future<ModelsMessage> tasksIdDelete(int id) async
    test('test tasksIdDelete', () async {
      // TODO
    });

    // Get one task
    //
    // Returns one task by its ID
    //
    //Future<ModelsTask> tasksIdGet(int id) async
    test('test tasksIdGet', () async {
      // TODO
    });

    // Updates a task position
    //
    // Updates a task position.
    //
    //Future<ModelsTaskPosition> tasksIdPositionPost(int id, ModelsTaskPosition view) async
    test('test tasksIdPositionPost', () async {
      // TODO
    });

    // Update a task
    //
    // Updates a task. This includes marking it as done. Assignees you pass will be updated, see their individual endpoints for more details on how this is done. To update labels, see the description of the endpoint.
    //
    //Future<ModelsTask> tasksIdPost(int id, ModelsTask task) async
    test('test tasksIdPost', () async {
      // TODO
    });

    // Remove a task comment
    //
    // Remove a task comment. The user doing this need to have at least write access to the task this comment belongs to.
    //
    //Future<ModelsMessage> tasksTaskIDCommentsCommentIDDelete(int taskID, int commentID) async
    test('test tasksTaskIDCommentsCommentIDDelete', () async {
      // TODO
    });

    // Remove a task comment
    //
    // Remove a task comment. The user doing this need to have at least read access to the task this comment belongs to.
    //
    //Future<ModelsTaskComment> tasksTaskIDCommentsCommentIDGet(int taskID, int commentID) async
    test('test tasksTaskIDCommentsCommentIDGet', () async {
      // TODO
    });

    // Update an existing task comment
    //
    // Update an existing task comment. The user doing this need to have at least write access to the task this comment belongs to.
    //
    //Future<ModelsTaskComment> tasksTaskIDCommentsCommentIDPost(int taskID, int commentID) async
    test('test tasksTaskIDCommentsCommentIDPost', () async {
      // TODO
    });

    // Get all task comments
    //
    // Get all task comments. The user doing this need to have at least read access to the task.
    //
    //Future<List<ModelsTaskComment>> tasksTaskIDCommentsGet(int taskID) async
    test('test tasksTaskIDCommentsGet', () async {
      // TODO
    });

    // Create a new task comment
    //
    // Create a new task comment. The user doing this need to have at least write access to the task this comment should belong to.
    //
    //Future<ModelsTaskComment> tasksTaskIDCommentsPut(int taskID, ModelsTaskComment relation) async
    test('test tasksTaskIDCommentsPut', () async {
      // TODO
    });

    // Create a new relation between two tasks
    //
    // Creates a new relation between two tasks. The user needs to have update rights on the base task and at least read rights on the other task. Both tasks do not need to be on the same project. Take a look at the docs for available task relation kinds.
    //
    //Future<ModelsTaskRelation> tasksTaskIDRelationsPut(int taskID, ModelsTaskRelation relation) async
    test('test tasksTaskIDRelationsPut', () async {
      // TODO
    });

    // Remove a task relation
    //
    //Future<ModelsMessage> tasksTaskIDRelationsRelationKindOtherTaskIDDelete(int taskID, String relationKind, int otherTaskID, ModelsTaskRelation relation) async
    test('test tasksTaskIDRelationsRelationKindOtherTaskIDDelete', () async {
      // TODO
    });

  });
}
