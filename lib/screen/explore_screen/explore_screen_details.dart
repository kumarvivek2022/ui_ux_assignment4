import 'package:flutter/material.dart';
import 'package:ui_ux_assignment4/helpers/utils2.dart';
import 'package:ui_ux_assignment4/model_class/sub_grid.dart';

import '../../model_class/model_class2.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(widget.Explores.gridtitle,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                ),
                itemCount: widget.Explores.subGrid.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                            ExploreScreenDetails(Explores : Explores[index],)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(int.parse(widget.Explores.subGrid[index].gridcolor))),
                          color: Color(int.parse(widget.Explores.subGrid[index].gridback)
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 80,
                                  width: 150,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(widget.Explores.subGrid[index].gridimage,
                                        fit: BoxFit.contain,
                                      ))),
                            ),
                            Text(widget.Explores.subGrid[index].gridtitle,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(widget.Explores.subGrid[index].gridsubtitle,
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("\$" + widget.Explores.subGrid[index].gridprice,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                SizedBox(width: 15,),
                                FloatingActionButton(
                                    mini: true,
                                    child: Icon(Icons.add),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                                    backgroundColor: Colors.green,

                                    onPressed: () {}
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })





          ],
        )

    );
  }
}
