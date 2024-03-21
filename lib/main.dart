import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:smart_app/bloc_observer.dart';
import 'package:smart_app/core/routing/app_router.dart';
import 'package:smart_app/smart_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(
    SmartApp(
      appRouter: AppRouter(),
    ),
  );
}
