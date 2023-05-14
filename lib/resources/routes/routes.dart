import 'package:get/get.dart';
import 'package:getx_mvvm_2/resources/routes/routes_name.dart';
import 'package:getx_mvvm_2/view/splash_screen.dart';

import '../../view/login/login_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.splashScreen,
          page: () => SplashScreen(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.loginView,
          page: () => LoginView(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.leftToRightWithFade,
        )
      ];
}
