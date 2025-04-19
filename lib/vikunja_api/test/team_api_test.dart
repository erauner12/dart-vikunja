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


/// tests for TeamApi
void main() {
  // final instance = TeamApi();

  group('tests for TeamApi', () {
    // Get teams
    //
    // Returns all teams the current user is part of.
    //
    //Future<List<ModelsTeam>> teamsGet({ int page, int perPage, String s }) async
    test('test teamsGet', () async {
      // TODO
    });

    // Deletes a team
    //
    // Delets a team. This will also remove the access for all users in that team.
    //
    //Future<ModelsMessage> teamsIdDelete(int id) async
    test('test teamsIdDelete', () async {
      // TODO
    });

    // Gets one team
    //
    // Returns a team by its ID.
    //
    //Future<ModelsTeam> teamsIdGet(int id) async
    test('test teamsIdGet', () async {
      // TODO
    });

    // Add a user to a team
    //
    // Add a user to a team.
    //
    //Future<ModelsTeamMember> teamsIdMembersPut(int id, ModelsTeamMember team) async
    test('test teamsIdMembersPut', () async {
      // TODO
    });

    // Toggle a team member's admin status
    //
    // If a user is team admin, this will make them member and vise-versa.
    //
    //Future<ModelsMessage> teamsIdMembersUserIDAdminPost(int id, int userID) async
    test('test teamsIdMembersUserIDAdminPost', () async {
      // TODO
    });

    // Remove a user from a team
    //
    // Remove a user from a team. This will also revoke any access this user might have via that team. A user can remove themselves from the team if they are not the last user in the team.
    //
    //Future<ModelsMessage> teamsIdMembersUserIDDelete(int id, int userID) async
    test('test teamsIdMembersUserIDDelete', () async {
      // TODO
    });

    // Updates a team
    //
    // Updates a team.
    //
    //Future<ModelsTeam> teamsIdPost(int id, ModelsTeam team) async
    test('test teamsIdPost', () async {
      // TODO
    });

    // Creates a new team
    //
    // Creates a new team.
    //
    //Future<ModelsTeam> teamsPut(ModelsTeam team) async
    test('test teamsPut', () async {
      // TODO
    });

  });
}
