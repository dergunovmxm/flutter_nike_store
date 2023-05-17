
import 'package:flutter/material.dart';
import 'package:flutter_nike_store/widgets/CustomAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 15,)
            ],
          ),
        ),
      ),
    );
  }
}
