import 'package:go_router/go_router.dart';
import 'package:portfolio/views/about_view.dart';
import 'package:portfolio/views/experience_view.dart';
import 'package:portfolio/views/projects_view.dart';

import '../views/home_view.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: Routers.home,
  routes: [
    GoRoute(
      path: Routers.home,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: Routers.about,
      builder: (context, state) => const AboutView(),
    ),
    GoRoute(
      path: Routers.experience,
      builder: (context, state) => const ExperienceView(),
    ),
    GoRoute(
      path: Routers.projects,
      builder: (context, state) => const ProjectsView(),
    ),
  ],
);

class Routers {
  static const home = '/';
  static const about = '/about';
  static const experience = '/experience';
  static const projects = '/projects';
  static const contact = '/contact';
}
