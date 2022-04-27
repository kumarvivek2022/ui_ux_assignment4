import 'package:flutter/material.dart';
import 'package:ui_ux_assignment4/model_class/model_class.dart';
class DescriptionScreen extends StatefulWidget {
  final Category Categories;
  const DescriptionScreen({Key? key, required this.Categories}) : super(key: key);

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          Image.network(widget.Categories.vegimage),
          Text(widget.Categories.vegtitle),
          Text(widget.Categories.vegdetail),
        ],
      )
    );
  }
}
