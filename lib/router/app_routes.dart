import 'package:fl_commponents/models/models.dart';
import 'package:fl_commponents/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_filled),
    MenuOption(route: 'listview', name: 'Listview 1', screen: const Listview(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'Listview 2', screen: const Listview2(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', name: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervisor_account),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_filled_rounded),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'sliderScreen', name: 'Sliders && checks', screen: const SliderScreen(), icon: Icons.slideshow_rounded),
    MenuOption(route: 'listViewBuilder', name: 'InfiniteScroll && Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });
    for( final option in menuOptions ) {
        appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview': (BuildContext context) => const Listview(),
  //   'listview2': (BuildContext context) => const Listview2(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
    return MaterialPageRoute(
        builder: (context) => const HomeScreen()
    );
  }
}