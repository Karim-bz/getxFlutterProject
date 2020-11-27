import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Hello World',
          'next': 'NEXT',
          'back': 'BACK',
        },
        'fr': {
          'title': 'Bienvenue World',
          'next': 'SUIVANT',
          'back': 'RETOUR',
        }
      };
}
