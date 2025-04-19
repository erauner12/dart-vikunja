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


/// tests for SharingApi
void main() {
  // final instance = SharingApi();

  group('tests for SharingApi', () {
    // Mark all notifications of a user as read
    //
    //Future<ModelsMessage> notificationsPost() async
    test('test notificationsPost', () async {
      // TODO
    });

    // Get teams on a project
    //
    // Returns a project with all teams which have access on a given project.
    //
    //Future<List<ModelsTeamWithRight>> projectsIdTeamsGet(int id, { int page, int perPage, String s }) async
    test('test projectsIdTeamsGet', () async {
      // TODO
    });

    // Add a team to a project
    //
    // Gives a team access to a project.
    //
    //Future<ModelsTeamProject> projectsIdTeamsPut(int id, ModelsTeamProject project) async
    test('test projectsIdTeamsPut', () async {
      // TODO
    });

    // Get users on a project
    //
    // Returns a project with all users which have access on a given project.
    //
    //Future<List<ModelsUserWithRight>> projectsIdUsersGet(int id, { int page, int perPage, String s }) async
    test('test projectsIdUsersGet', () async {
      // TODO
    });

    // Add a user to a project
    //
    // Gives a user access to a project.
    //
    //Future<ModelsProjectUser> projectsIdUsersPut(int id, ModelsProjectUser project) async
    test('test projectsIdUsersPut', () async {
      // TODO
    });

    // Delete a team from a project
    //
    // Delets a team from a project. The team won't have access to the project anymore.
    //
    //Future<ModelsMessage> projectsProjectIDTeamsTeamIDDelete(int projectID, int teamID) async
    test('test projectsProjectIDTeamsTeamIDDelete', () async {
      // TODO
    });

    // Update a team <-> project relation
    //
    // Update a team <-> project relation. Mostly used to update the right that team has.
    //
    //Future<ModelsTeamProject> projectsProjectIDTeamsTeamIDPost(int projectID, int teamID, ModelsTeamProject project) async
    test('test projectsProjectIDTeamsTeamIDPost', () async {
      // TODO
    });

    // Delete a user from a project
    //
    // Delets a user from a project. The user won't have access to the project anymore.
    //
    //Future<ModelsMessage> projectsProjectIDUsersUserIDDelete(int projectID, int userID) async
    test('test projectsProjectIDUsersUserIDDelete', () async {
      // TODO
    });

    // Update a user <-> project relation
    //
    // Update a user <-> project relation. Mostly used to update the right that user has.
    //
    //Future<ModelsProjectUser> projectsProjectIDUsersUserIDPost(int projectID, int userID, ModelsProjectUser project) async
    test('test projectsProjectIDUsersUserIDPost', () async {
      // TODO
    });

    // Get all link shares for a project
    //
    // Returns all link shares which exist for a given project
    //
    //Future<List<ModelsLinkSharing>> projectsProjectSharesGet(int project, { int page, int perPage, String s }) async
    test('test projectsProjectSharesGet', () async {
      // TODO
    });

    // Share a project via link
    //
    // Share a project via link. The user needs to have write-access to the project to be able do this.
    //
    //Future<ModelsLinkSharing> projectsProjectSharesPut(int project, ModelsLinkSharing label) async
    test('test projectsProjectSharesPut', () async {
      // TODO
    });

    // Remove a link share
    //
    // Remove a link share. The user needs to have write-access to the project to be able do this.
    //
    //Future<ModelsMessage> projectsProjectSharesShareDelete(int project, int share) async
    test('test projectsProjectSharesShareDelete', () async {
      // TODO
    });

    // Get one link shares for a project
    //
    // Returns one link share by its ID.
    //
    //Future<ModelsLinkSharing> projectsProjectSharesShareGet(int project, int share) async
    test('test projectsProjectSharesShareGet', () async {
      // TODO
    });

    // Get an auth token for a share
    //
    // Get a jwt auth token for a shared project from a share hash.
    //
    //Future<AuthToken> sharesShareAuthPost(String share, V1LinkShareAuth password) async
    test('test sharesShareAuthPost', () async {
      // TODO
    });

  });
}
