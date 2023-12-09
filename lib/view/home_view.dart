import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stc/models/homeviewmodel.dart';

class homeview extends StatelessWidget {
  const homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => homeviewmodel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(viewModel.counterService.counterValue.toString()),
                  
                ],
              ),
            ),
          );
        });
  }
}
