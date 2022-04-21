import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
               padding: const EdgeInsets.all(50),
               child: Container(
          height: 80,
          width: 80,
          child: Image.network('https://media.istockphoto.com/vectors/carrot-flat-icon-vegetable-and-diet-vector-graphics-a-colorful-solid-vector-id694934682?k=20&m=694934682&s=612x612&w=0&h=y6S6_EZ6OeIOiPIOKwpc_88Z5MQ85cNuU10PavNiYZo=',
            fit: BoxFit.cover,
          ),
        ),
      ),

              //SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.green,
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
                          Row(
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
                        ],
                      ),
                    ),
                  )
                      .toList(),
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
              )
      ],
    ),
    ),
    );
  }
}
