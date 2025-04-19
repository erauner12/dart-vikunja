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


/// tests for ProjectApi
void main() {
  // final instance = ProjectApi();

  group('tests for ProjectApi', () {
    // Get an unsplash image
    //
    // Get an unsplash image. **Returns json on error.**
    //
    //Future<MultipartFile> backgroundsUnsplashImageImageGet(int image) async
    test('test backgroundsUnsplashImageImageGet', () async {
      // TODO
    });

    // Get an unsplash thumbnail image
    //
    // Get an unsplash thumbnail image. The thumbnail is cropped to a max width of 200px. **Returns json on error.**
    //
    //Future<MultipartFile> backgroundsUnsplashImageImageThumbGet(int image) async
    test('test backgroundsUnsplashImageImageThumbGet', () async {
      // TODO
    });

    // Search for a background from unsplash
    //
    // Search for a project background from unsplash
    //
    //Future<List<BackgroundImage>> backgroundsUnsplashSearchGet({ String s, int p }) async
    test('test backgroundsUnsplashSearchGet', () async {
      // TODO
    });

    // Get all projects a user has access to
    //
    // Returns all projects a user has access to.
    //
    //Future<List<ModelsProject>> projectsGet({ int page, int perPage, String s, bool isArchived }) async
    test('test projectsGet', () async {
      // TODO
    });

    // Remove a project background
    //
    // Removes a previously set project background, regardless of the project provider used to set the background. It does not throw an error if the project does not have a background.
    //
    //Future<ModelsProject> projectsIdBackgroundDelete(int id) async
    test('test projectsIdBackgroundDelete', () async {
      // TODO
    });

    // Get the project background
    //
    // Get the project background of a specific project. **Returns json on error.**
    //
    //Future<MultipartFile> projectsIdBackgroundGet(int id) async
    test('test projectsIdBackgroundGet', () async {
      // TODO
    });

    // Set an unsplash photo as project background
    //
    // Sets a photo from unsplash as project background.
    //
    //Future<ModelsProject> projectsIdBackgroundsUnsplashPost(int id, BackgroundImage project) async
    test('test projectsIdBackgroundsUnsplashPost', () async {
      // TODO
    });

    // Upload a project background
    //
    // Upload a project background.
    //
    //Future<ModelsMessage> projectsIdBackgroundsUploadPut(int id, String background) async
    test('test projectsIdBackgroundsUploadPut', () async {
      // TODO
    });

    // Deletes a project
    //
    // Delets a project
    //
    //Future<ModelsMessage> projectsIdDelete(int id) async
    test('test projectsIdDelete', () async {
      // TODO
    });

    // Gets one project
    //
    // Returns a project by its ID.
    //
    //Future<ModelsProject> projectsIdGet(int id) async
    test('test projectsIdGet', () async {
      // TODO
    });

    // Updates a project
    //
    // Updates a project. This does not include adding a task (see below).
    //
    //Future<ModelsProject> projectsIdPost(int id, ModelsProject project) async
    test('test projectsIdPost', () async {
      // TODO
    });

    // Get users
    //
    // Lists all users (without emailadresses). Also possible to search for a specific user.
    //
    //Future<List<UserUser>> projectsIdProjectusersGet(int id, { String s }) async
    test('test projectsIdProjectusersGet', () async {
      // TODO
    });

    // Get all kanban buckets of a project
    //
    // Returns all kanban buckets which belong to that project. Buckets are always sorted by their `position` in ascending order. To get all buckets with their tasks, use the tasks endpoint with a kanban view.
    //
    //Future<List<ModelsBucket>> projectsIdViewsViewBucketsGet(int id, int view) async
    test('test projectsIdViewsViewBucketsGet', () async {
      // TODO
    });

    // Create a new bucket
    //
    // Creates a new kanban bucket on a project.
    //
    //Future<ModelsBucket> projectsIdViewsViewBucketsPut(int id, int view, ModelsBucket bucket) async
    test('test projectsIdViewsViewBucketsPut', () async {
      // TODO
    });

    // Duplicate an existing project
    //
    // Copies the project, tasks, files, kanban data, assignees, comments, attachments, lables, relations, backgrounds, user/team rights and link shares from one project to a new one. The user needs read access in the project and write access in the parent of the new project.
    //
    //Future<ModelsProjectDuplicate> projectsProjectIDDuplicatePut(int projectID, ModelsProjectDuplicate project) async
    test('test projectsProjectIDDuplicatePut', () async {
      // TODO
    });

    // Deletes an existing bucket
    //
    // Deletes an existing kanban bucket and dissociates all of its task. It does not delete any tasks. You cannot delete the last bucket on a project.
    //
    //Future<ModelsMessage> projectsProjectIDViewsViewBucketsBucketIDDelete(int projectID, int bucketID, int view) async
    test('test projectsProjectIDViewsViewBucketsBucketIDDelete', () async {
      // TODO
    });

    // Update an existing bucket
    //
    // Updates an existing kanban bucket.
    //
    //Future<ModelsBucket> projectsProjectIDViewsViewBucketsBucketIDPost(int projectID, int bucketID, int view, ModelsBucket bucket) async
    test('test projectsProjectIDViewsViewBucketsBucketIDPost', () async {
      // TODO
    });

    // Get all project views for a project
    //
    // Returns all project views for a sepcific project
    //
    //Future<List<ModelsProjectView>> projectsProjectViewsGet(int project) async
    test('test projectsProjectViewsGet', () async {
      // TODO
    });

    // Delete a project view
    //
    // Deletes a project view.
    //
    //Future<ModelsMessage> projectsProjectViewsIdDelete(int project, int id) async
    test('test projectsProjectViewsIdDelete', () async {
      // TODO
    });

    // Get one project view
    //
    // Returns a project view by its ID.
    //
    //Future<ModelsProjectView> projectsProjectViewsIdGet(int project, int id) async
    test('test projectsProjectViewsIdGet', () async {
      // TODO
    });

    // Updates a project view
    //
    // Updates a project view.
    //
    //Future<ModelsProjectView> projectsProjectViewsIdPost(int project, int id, ModelsProjectView view) async
    test('test projectsProjectViewsIdPost', () async {
      // TODO
    });

    // Create a project view
    //
    // Create a project view in a specific project.
    //
    //Future<ModelsProjectView> projectsProjectViewsPut(int project, ModelsProjectView view) async
    test('test projectsProjectViewsPut', () async {
      // TODO
    });

    // Creates a new project
    //
    // Creates a new project. If a parent project is provided the user needs to have write access to that project.
    //
    //Future<ModelsProject> projectsPut(ModelsProject project) async
    test('test projectsPut', () async {
      // TODO
    });

  });
}
