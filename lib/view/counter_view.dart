import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stc/models/counter_viewmodel.dart';

class counterview extends StatelessWidget {
  const counterview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => counterviewmodel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(viewModel.counterService.counterValue.toString()),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.addvalue();
                      },
                      child: Text("add counter")),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.navigatetoHome();
                      },
                      child: Text("navigate to homepage"))
                ],
              ),
            ),
          );
        });
  }
}
