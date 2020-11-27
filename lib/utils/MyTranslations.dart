import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Hello World %s',
          'next': 'NEXT',
          'back': 'BACK',
          'valide': 'Validate Email',
          'correct': 'Email Correct',
          'formatgood': 'Good Email Format',
          'incorrect': 'Email incorrect',
          'formatbad': 'Bad Email format',
        },
        'fr': {
          'title': 'Bienvenue World %s',
          'next': 'SUIVANT',
          'back': 'RETOUR',
          'valide': 'Email valide',
          'correct': 'Email Correct',
          'formatgood': 'bon Email Format',
          'incorrect': 'Email incorrect',
          'formatbad': 'mauvais Email format',
        }
      };
}
