import 'package:flutter/material.dart';
import 'package:task1/common/utils/dimensions.dart';
import 'package:task1/pages/search_page/view/search_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final s = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      AppDimensions.update(constraints.biggest);
      print("Layout changes");
      return SearchView();
    });
  }
}
