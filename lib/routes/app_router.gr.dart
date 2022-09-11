// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    Route1.name: (routeData) {
      return MaterialPageX<dynamic>(routeData: routeData, child: const Page1());
    },
    MapRoute.name: (routeData) {
      final args =
          routeData.argsAs<MapRouteArgs>(orElse: () => const MapRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: MapPage(key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(Route1.name, path: '/'),
        RouteConfig(MapRoute.name, path: '/AutoRouter.of(context)')
      ];
}

/// generated route for
/// [Page1]
class Route1 extends PageRouteInfo<void> {
  const Route1() : super(Route1.name, path: '/');

  static const String name = 'Route1';
}

/// generated route for
/// [MapPage]
class MapRoute extends PageRouteInfo<MapRouteArgs> {
  MapRoute({Key? key})
      : super(MapRoute.name,
            path: '/AutoRouter.of(context)', args: MapRouteArgs(key: key));

  static const String name = 'MapRoute';
}

class MapRouteArgs {
  const MapRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MapRouteArgs{key: $key}';
  }
}
