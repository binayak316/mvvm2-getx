import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'internet_exception':
              'we\'re unable to show results.\n please check your data\n connection ',
          'general_exception':
              'we\'re unable to process your request.\n please try again ',
          'welcome_back': 'Welcome\nBack',
          'login': 'Login',
          'email_hint': 'Enter Your Email',
          'password_hint': 'Enter Your Password',
        },
        'ne_NP': {
          'email_hint': 'ईमेल टाइप गर्नुहोस्',
        },
      };
}
