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
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
            onPressed: () {
              Navigator.of(context).pop();
            },),
        ),

      body: Column(
        children: [

          Image.network(widget.Categories.vegimage),
          Text(widget.Categories.vegtitle,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text(widget.Categories.vegdetail),
        ],
      )
    );
  }
}
