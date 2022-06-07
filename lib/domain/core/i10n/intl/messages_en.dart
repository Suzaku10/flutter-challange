// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "dialog_login_failed": MessageLookupByLibrary.simpleMessage(
            "User ID or Your Password isn\'t filled."),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "login_info":
            MessageLookupByLibrary.simpleMessage("Please sign in to continue"),
        "non_member_info":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "ok": MessageLookupByLibrary.simpleMessage("ok"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "password_hint": MessageLookupByLibrary.simpleMessage("Password"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "user_id": MessageLookupByLibrary.simpleMessage("User ID"),
        "user_id_hint": MessageLookupByLibrary.simpleMessage("User ID")
      };
}
