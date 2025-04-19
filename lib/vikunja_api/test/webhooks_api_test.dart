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


/// tests for WebhooksApi
void main() {
  // final instance = WebhooksApi();

  group('tests for WebhooksApi', () {
    // Get all api webhook targets for the specified project
    //
    // Get all api webhook targets for the specified project.
    //
    //Future<List<ModelsWebhook>> projectsIdWebhooksGet(int id, { int page, int perPage }) async
    test('test projectsIdWebhooksGet', () async {
      // TODO
    });

    // Create a webhook target
    //
    // Create a webhook target which receives POST requests about specified events from a project.
    //
    //Future<ModelsWebhook> projectsIdWebhooksPut(int id, ModelsWebhook webhook) async
    test('test projectsIdWebhooksPut', () async {
      // TODO
    });

    // Deletes an existing webhook target
    //
    // Delete any of the project's webhook targets.
    //
    //Future<ModelsMessage> projectsIdWebhooksWebhookIDDelete(int id, int webhookID) async
    test('test projectsIdWebhooksWebhookIDDelete', () async {
      // TODO
    });

    // Change a webhook target's events.
    //
    // Change a webhook target's events. You cannot change other values of a webhook.
    //
    //Future<ModelsWebhook> projectsIdWebhooksWebhookIDPost(int id, int webhookID) async
    test('test projectsIdWebhooksWebhookIDPost', () async {
      // TODO
    });

    // Get all possible webhook events
    //
    // Get all possible webhook events to use when creating or updating a webhook target.
    //
    //Future<List<String>> webhooksEventsGet() async
    test('test webhooksEventsGet', () async {
      // TODO
    });

  });
}
