import 'package:all_widgets/home/home_sceen.dart';
import 'package:all_widgets/buttons/buttons_screen.dart';
import 'package:all_widgets/infinite_scroll_screen/infinite_scroll_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:all_widgets/cards/card_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
   GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardScreen.name,
      builder: (context, state) => const CardScreen(),
    ),
    GoRoute(
      path: '/infinite_scroll',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),
  ],
);
