import 'package:flutter/material.dart';
import 'package:flutter_nike_store/widgets/CustomAppBar.dart';
import 'package:flutter_nike_store/widgets/RowItemsWidget.dart';
import 'package:flutter_nike_store/widgets/Search.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              CustomAppBar(),
              SizedBox(height: 15),
              Search(),
              SizedBox(height: 30),
              RowItemsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
