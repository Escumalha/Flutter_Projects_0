import 'package:flutter/material.dart';

class HomeController extends InheritedNotifier<ValueNotifier<int>> {
  HomeController({super.key, required super.child})
      : super(notifier: ValueNotifier(0));
  int get value => notifier!.value;
  static of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }

  increment() {
    notifier!.value++;
  }
}
