// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wolfpack_assign/nav/transitions.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/startup/startup_view.dart';

class Routes {
  static const String startupView = '/startup-view';
  static const String homeView = '/home-view';
  static const all = <String>{
    startupView,
    homeView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
        const StartupView(),
        settings: data,
        transitionsBuilder: TransitionMaster.fadeTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    HomeView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
        const HomeView(),
        settings: data,
        transitionsBuilder: TransitionMaster.sharedAxisTransition,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
  };
}
