import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../view/index/index.dart';
import '../view/map/map.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: Page1, initial: true),
    AutoRoute(path: '/AutoRouter.of(context)', page: MapPage),
  ],
)
class AppRouter extends _$AppRouter {}
