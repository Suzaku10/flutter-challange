// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a id locale. All the
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
  String get localeName => 'id';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cancel": MessageLookupByLibrary.simpleMessage("Batalkan"),
        "dialog_login_failed": MessageLookupByLibrary.simpleMessage(
            "User ID dan atau Password anda belum diisi."),
        "login": MessageLookupByLibrary.simpleMessage("Masuk"),
        "login_info": MessageLookupByLibrary.simpleMessage(
            "Silakan masuk untuk melanjutkan"),
        "non_member_info":
            MessageLookupByLibrary.simpleMessage("Tidak memiliki akun?"),
        "ok": MessageLookupByLibrary.simpleMessage("ok"),
        "password": MessageLookupByLibrary.simpleMessage("Kata Sandi"),
        "password_hint": MessageLookupByLibrary.simpleMessage("Kata Sandi"),
        "sign_up": MessageLookupByLibrary.simpleMessage("Daftar"),
        "user_id": MessageLookupByLibrary.simpleMessage("ID Pengguna"),
        "user_id_hint": MessageLookupByLibrary.simpleMessage("ID Pengguna")
      };
}
