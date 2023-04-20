import 'package:get/get.dart';

class Translate implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': {'info': 'This is Home Page'},
        // 'id': {'info': '%s Ini adalah halaman home %s'},
        // 'id': {'info': 'Ini adalah halaman home @akrab'},
        'id_jawa': {'info': 'Iki minangka kaca ngarep @akrab'}
      };
}
