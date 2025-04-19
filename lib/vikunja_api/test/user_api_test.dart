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


/// tests for UserApi
void main() {
  // final instance = UserApi();

  group('tests for UserApi', () {
    // Confirm the email of a new user
    //
    // Confirms the email of a newly registered user.
    //
    //Future<ModelsMessage> userConfirmPost(UserEmailConfirm credentials) async
    test('test userConfirmPost', () async {
      // TODO
    });

    // Abort a user deletion request
    //
    // Aborts an in-progress user deletion.
    //
    //Future<ModelsMessage> userDeletionCancelPost(V1UserPasswordConfirmation credentials) async
    test('test userDeletionCancelPost', () async {
      // TODO
    });

    // Confirm a user deletion request
    //
    // Confirms the deletion request of a user sent via email.
    //
    //Future<ModelsMessage> userDeletionConfirmPost(V1UserDeletionRequestConfirm credentials) async
    test('test userDeletionConfirmPost', () async {
      // TODO
    });

    // Request the deletion of the user
    //
    // Requests the deletion of the current user. It will trigger an email which has to be confirmed to start the deletion.
    //
    //Future<ModelsMessage> userDeletionRequestPost(V1UserPasswordConfirmation credentials) async
    test('test userDeletionRequestPost', () async {
      // TODO
    });

    // Download a user data export.
    //
    //Future<ModelsMessage> userExportDownloadPost(V1UserPasswordConfirmation password) async
    test('test userExportDownloadPost', () async {
      // TODO
    });

    // Request a user data export.
    //
    //Future<ModelsMessage> userExportRequestPost(V1UserPasswordConfirmation password) async
    test('test userExportRequestPost', () async {
      // TODO
    });

    // Get user information
    //
    // Returns the current user object with their settings.
    //
    //Future<V1UserWithSettings> userGet() async
    test('test userGet', () async {
      // TODO
    });

    // Change password
    //
    // Lets the current user change its password.
    //
    //Future<ModelsMessage> userPasswordPost(V1UserPassword userPassword) async
    test('test userPasswordPost', () async {
      // TODO
    });

    // Resets a password
    //
    // Resets a user email with a previously reset token.
    //
    //Future<ModelsMessage> userPasswordResetPost(UserPasswordReset credentials) async
    test('test userPasswordResetPost', () async {
      // TODO
    });

    // Request password reset token
    //
    // Requests a token to reset a users password. The token is sent via email.
    //
    //Future<ModelsMessage> userPasswordTokenPost(UserPasswordTokenRequest credentials) async
    test('test userPasswordTokenPost', () async {
      // TODO
    });

    // Return user avatar setting
    //
    // Returns the current user's avatar setting.
    //
    //Future<V1UserAvatarProvider> userSettingsAvatarGet() async
    test('test userSettingsAvatarGet', () async {
      // TODO
    });

    // Set the user's avatar
    //
    // Changes the user avatar. Valid types are gravatar (uses the user email), upload, initials, default.
    //
    //Future<ModelsMessage> userSettingsAvatarPost(V1UserAvatarProvider avatar) async
    test('test userSettingsAvatarPost', () async {
      // TODO
    });

    // Upload a user avatar
    //
    // Upload a user avatar. This will also set the user's avatar provider to \"upload\"
    //
    //Future<ModelsMessage> userSettingsAvatarUploadPut(String avatar) async
    test('test userSettingsAvatarUploadPut', () async {
      // TODO
    });

    // Update email address
    //
    // Lets the current user change their email address.
    //
    //Future<ModelsMessage> userSettingsEmailPost(UserEmailUpdate userEmailUpdate) async
    test('test userSettingsEmailPost', () async {
      // TODO
    });

    // Change general user settings of the current user.
    //
    //Future<ModelsMessage> userSettingsGeneralPost(V1UserSettings avatar) async
    test('test userSettingsGeneralPost', () async {
      // TODO
    });

    // Returns the caldav tokens for the current user
    //
    // Return the IDs and created dates of all caldav tokens for the current user.
    //
    //Future<List<UserToken>> userSettingsTokenCaldavGet() async
    test('test userSettingsTokenCaldavGet', () async {
      // TODO
    });

    // Delete a caldav token by id
    //
    //Future<ModelsMessage> userSettingsTokenCaldavIdGet(int id) async
    test('test userSettingsTokenCaldavIdGet', () async {
      // TODO
    });

    // Generate a caldav token
    //
    // Generates a caldav token which can be used for the caldav api. It is not possible to see the token again after it was generated.
    //
    //Future<UserToken> userSettingsTokenCaldavPut() async
    test('test userSettingsTokenCaldavPut', () async {
      // TODO
    });

    // Disable totp settings
    //
    // Disables any totp settings for the current user.
    //
    //Future<ModelsMessage> userSettingsTotpDisablePost(UserLogin totp) async
    test('test userSettingsTotpDisablePost', () async {
      // TODO
    });

    // Enable a previously enrolled totp setting.
    //
    // Enables a previously enrolled totp setting by providing a totp passcode.
    //
    //Future<ModelsMessage> userSettingsTotpEnablePost(UserTOTPPasscode totp) async
    test('test userSettingsTotpEnablePost', () async {
      // TODO
    });

    // Enroll a user into totp
    //
    // Creates an initial setup for the user in the db. After this step, the user needs to verify they have a working totp setup with the \"enable totp\" endpoint.
    //
    //Future<UserTOTP> userSettingsTotpEnrollPost() async
    test('test userSettingsTotpEnrollPost', () async {
      // TODO
    });

    // Totp setting for the current user
    //
    // Returns the current user totp setting or an error if it is not enabled.
    //
    //Future<UserTOTP> userSettingsTotpGet() async
    test('test userSettingsTotpGet', () async {
      // TODO
    });

    // Totp QR Code
    //
    // Returns a qr code for easier setup at end user's devices.
    //
    //Future<MultipartFile> userSettingsTotpQrcodeGet() async
    test('test userSettingsTotpQrcodeGet', () async {
      // TODO
    });

    // Get all available time zones on this vikunja instance
    //
    // Because available time zones depend on the system Vikunja is running on, this endpoint returns a project of all valid time zones this particular Vikunja instance can handle. The project of time zones is not sorted, you should sort it on the client.
    //
    //Future<List<String>> userTimezonesGet() async
    test('test userTimezonesGet', () async {
      // TODO
    });

    // Renew user token
    //
    // Returns a new valid jwt user token with an extended length.
    //
    //Future<AuthToken> userTokenPost() async
    test('test userTokenPost', () async {
      // TODO
    });

    // User Avatar
    //
    // Returns the user avatar as image.
    //
    //Future<MultipartFile> usernameAvatarGet(String username, { int size }) async
    test('test usernameAvatarGet', () async {
      // TODO
    });

    // Get users
    //
    // Search for a user by its username, name or full email. Name (not username) or email require that the user has enabled this in their settings.
    //
    //Future<List<UserUser>> usersGet({ String s }) async
    test('test usersGet', () async {
      // TODO
    });

  });
}
