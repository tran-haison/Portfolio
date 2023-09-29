import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/views/home_view.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: Routers.home,
      builder: (context, state) => const HomeView(),
    ),
  ],
);

class Routers {
  static const home = '/';
  static const about = '/about';
  static const experiences = '/experiences';
  static const projects = '/projects';
  static const contact = '/contact';
}
