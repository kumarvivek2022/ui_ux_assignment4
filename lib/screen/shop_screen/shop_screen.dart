

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ui_ux_assignment4/helpers/utils.dart';
import 'package:ui_ux_assignment4/model_class/model_class.dart';
import 'package:ui_ux_assignment4/screen/description_screen/description_screen.dart';


final List<String> imagesList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeEeZXg4YaVLRnmSmkc9Y4ikDhzKfDTPuk8Q&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRr0vu80SNLULkQ1GBqyoL1Jr5BRt9gaofqQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg315T-slJNITqRNIQJQ_TqO-r3A8sdAmnwQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxqGYKkntg_uMPFAY8J8WdcyQzq1zS3CUDgg&usqp=CAU',
];

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
               padding: const EdgeInsets.only(top: 50),
               child: Container(
          height: 60,
          width: 60,
          child: Image.network('https://media.istockphoto.com/vectors/carrot-flat-icon-vegetable-and-diet-vector-graphics-a-colorful-solid-vector-id694934682?k=20&m=694934682&s=612x612&w=0&h=y6S6_EZ6OeIOiPIOKwpc_88Z5MQ85cNuU10PavNiYZo=',
            fit: BoxFit.cover,
          ),
        ),
      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    Text('Dhaka,Banasssre'),
                  ],
                ),
              ),

              //SizedBox(height: 10,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children : [ 
                    Container(
                      height: 150,
                      width: double.infinity,
                      child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        // enlargeCenterPage: true,
                        //scrollDirection: Axis.vertical,
                        onPageChanged: (index, reason) {
                          setState(
                                () {
                              _currentIndex = index;
                            },
                          );
                        },
                      ),
                      items: imagesList
                          .map(
                            (item) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    item,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                          .toList(),
                  ),
                    ),
                    Positioned(
                      bottom: 10,
                        left: 160,
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagesList.map((urlOfItem) {
                        int index = imagesList.indexOf(urlOfItem);
                        return Container(
                          width: 10.0,
                          height: 10.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? Color.fromRGBO(0, 0, 0, 0.8)
                                : Color.fromRGBO(0, 0, 0, 0.3),
                          ),
                        );
                      }).toList(),
                    )
                    )
                  ]
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Exclusive Offer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  TextButton(

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                  primary: Colors.green,
                 // elevation: 2,
                  backgroundColor: Colors.white),
                    ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Categories.length,
                    itemBuilder: (context,int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 80,
                                width: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                child: Image.network(Categories[index].urlImage,),
                              ),
                            ),),
                            Text(Categories[index].title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Text(Categories[index].subtitle,style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$" + Categories[index].price,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
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
                    );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Best Selling',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  TextButton(

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        primary: Colors.green,
                        // elevation: 2,
                        backgroundColor: Colors.white),
                  ),
                ],
              ),
      Container(
        //width: MediaQuery.of(context).size.width,
        height: 200,
        //decoration: BoxDecoration(),
        child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context,int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DescriptionScreen(
                                Categories: Categories[index]),
                          ));
              },
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 140,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(Categories[index].vegimage,fit: BoxFit.cover,),
                            )),

                      ),
                    ),
                    Text(Categories[index].vegtitle, style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),),

                  ],

                ),
              ),
            ),
          );
        }),
    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Groceries',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  TextButton(

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        primary: Colors.green,
                        // elevation: 2,
                        backgroundColor: Colors.white),
                  ),
                ],
              ),
      Container(
        // width: MediaQuery.of(context).size.width,
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Categories.length,
            itemBuilder: (context,int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(int.parse(Categories[index].colorcode),),
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ClipRRect(
                              child: Image.network(Categories[index].groceryimage,fit: BoxFit.cover,),
                          borderRadius: BorderRadius.circular(10),),
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Text(Categories[index].grocerytitle, style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              );
            }),

      ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Categories.length,
                    itemBuilder: (context,int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 80,
                                  width: 140,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(Categories[index].nonvegimage,
                                     // height: 100,width: 150,
                                      fit: BoxFit.cover,),
                                  ),
                                ),
                              ),
                              Text(Categories[index].nonvegtitle,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                              Text(Categories[index].subtitle,style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(Categories[index].nonvegprice,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
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
                      );
                    }),
              ),




            ],
        ),
    ),
    );


  }
}
