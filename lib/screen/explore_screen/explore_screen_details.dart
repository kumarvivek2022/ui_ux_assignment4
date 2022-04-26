import 'package:flutter/material.dart';

import '../../model_class/mode_class2.dart';
class ExploreScreenDetails extends StatefulWidget {
  final Explore Explores;
  const ExploreScreenDetails({Key? key, required this.Explores}) : super(key: key);

  @override
  State<ExploreScreenDetails> createState() => _ExploreScreenDetailsState();
}

class _ExploreScreenDetailsState extends State<ExploreScreenDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [

            Image.network(widget.Explores.gridimage),
            Text(widget.Explores.gridtitle),
          ],
        )

    );
  }
}
