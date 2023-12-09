import 'package:flutter/material.dart';
//import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stc/app/app.locator.dart';
import 'package:stc/app/app.router.dart';
//import 'package:stacked/stacked.dart';
//import 'package:stacked_services/stacked_services.dart';
//import 'package:stc/view/counter_view.dart';

void main() async {
  await setupLocator();
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
