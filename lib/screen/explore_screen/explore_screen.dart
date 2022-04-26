import 'package:flutter/material.dart';
import 'package:ui_ux_assignment4/helpers/utils2.dart';
import 'package:ui_ux_assignment4/model_class/mode_class2.dart';
import 'package:ui_ux_assignment4/screen/explore_screen/explore_screen_details.dart';
class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text('Find Products',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  focusColor: Colors.grey.shade300,
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  hintText: "Search Store",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
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
                itemCount: Explores.length,
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
                          border: Border.all(color: Color(int.parse(Explores[index].gridcolor))),
                          color: Color(int.parse(Explores[index].gridback)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                             Padding(
                              padding: const EdgeInsets.all(8.0),
                             child: Container(
                                 height: 100,
                                   width: 150,
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(10),
                                      child: Image.network(Explores[index].gridimage,
                                        fit: BoxFit.cover,
                                      ))),
                            ),
                             Text(
                               Explores[index].gridtitle,
                              textAlign: TextAlign.center,
                               style: TextStyle(fontWeight: FontWeight.bold),
                             ),
                          ],
                        ),
                      ),
                    ),
                  );
                })


          ],
        ),
      ),
    );
  }
}
