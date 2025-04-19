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


/// tests for MigrationApi
void main() {
  // final instance = MigrationApi();

  group('tests for MigrationApi', () {
    // Get the auth url from Microsoft Todo
    //
    // Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from Microsoft Todo to Vikunja.
    //
    //Future<HandlerAuthURL> migrationMicrosoftTodoAuthGet() async
    test('test migrationMicrosoftTodoAuthGet', () async {
      // TODO
    });

    // Migrate all projects, tasks etc. from Microsoft Todo
    //
    // Migrates all tasklinsts, tasks, notes and reminders from Microsoft Todo to Vikunja.
    //
    //Future<ModelsMessage> migrationMicrosoftTodoMigratePost(MicrosofttodoMigration migrationCode) async
    test('test migrationMicrosoftTodoMigratePost', () async {
      // TODO
    });

    // Get migration status
    //
    // Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
    //
    //Future<MigrationStatus> migrationMicrosoftTodoStatusGet() async
    test('test migrationMicrosoftTodoStatusGet', () async {
      // TODO
    });

    // Import all projects, tasks etc. from a TickTick backup export
    //
    // Imports all projects, tasks, notes, reminders, subtasks and files from a TickTick backup export into Vikunja.
    //
    //Future<ModelsMessage> migrationTicktickMigratePost(String import_) async
    test('test migrationTicktickMigratePost', () async {
      // TODO
    });

    // Get migration status
    //
    // Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
    //
    //Future<MigrationStatus> migrationTicktickStatusGet() async
    test('test migrationTicktickStatusGet', () async {
      // TODO
    });

    // Get the auth url from todoist
    //
    // Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from todoist to Vikunja.
    //
    //Future<HandlerAuthURL> migrationTodoistAuthGet() async
    test('test migrationTodoistAuthGet', () async {
      // TODO
    });

    // Migrate all lists, tasks etc. from todoist
    //
    // Migrates all projects, tasks, notes, reminders, subtasks and files from todoist to vikunja.
    //
    //Future<ModelsMessage> migrationTodoistMigratePost(TodoistMigration migrationCode) async
    test('test migrationTodoistMigratePost', () async {
      // TODO
    });

    // Get migration status
    //
    // Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
    //
    //Future<MigrationStatus> migrationTodoistStatusGet() async
    test('test migrationTodoistStatusGet', () async {
      // TODO
    });

    // Get the auth url from trello
    //
    // Returns the auth url where the user needs to get its auth code. This code can then be used to migrate everything from trello to Vikunja.
    //
    //Future<HandlerAuthURL> migrationTrelloAuthGet() async
    test('test migrationTrelloAuthGet', () async {
      // TODO
    });

    // Migrate all projects, tasks etc. from trello
    //
    // Migrates all projects, tasks, notes, reminders, subtasks and files from trello to vikunja.
    //
    //Future<ModelsMessage> migrationTrelloMigratePost(TrelloMigration migrationCode) async
    test('test migrationTrelloMigratePost', () async {
      // TODO
    });

    // Get migration status
    //
    // Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
    //
    //Future<MigrationStatus> migrationTrelloStatusGet() async
    test('test migrationTrelloStatusGet', () async {
      // TODO
    });

    // Import all projects, tasks etc. from a Vikunja data export
    //
    // Imports all projects, tasks, notes, reminders, subtasks and files from a Vikunjda data export into Vikunja.
    //
    //Future<ModelsMessage> migrationVikunjaFileMigratePost(String import_) async
    test('test migrationVikunjaFileMigratePost', () async {
      // TODO
    });

    // Get migration status
    //
    // Returns if the current user already did the migation or not. This is useful to show a confirmation message in the frontend if the user is trying to do the same migration again.
    //
    //Future<MigrationStatus> migrationVikunjaFileStatusGet() async
    test('test migrationVikunjaFileStatusGet', () async {
      // TODO
    });

  });
}
