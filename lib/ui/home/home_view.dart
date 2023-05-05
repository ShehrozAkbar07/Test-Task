import 'package:flutter/material.dart';
import 'package:myproject/ui/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) => Scaffold(
            backgroundColor: model.backgroundColor,
            body: InkWell(
              onTap: () {
                model.changeBackgroundColor();
              },
              child: Center(
                child: InkWell(
                  onTap: () {
                    model.changeTextColor();
                  },
                  child: Text(
                    "Hello there",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: model.textColor,
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
