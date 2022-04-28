import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt7a63fjDBrqouQdznxNkgAFhQVfIn2Qe7bw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_jyoXeiWVg54g7FED8-1OyI0k_snDIPVIVQ&usqp=CAU",
    "https://img3.exportersindia.com/product_images/bc-full/2019/6/6430569/organic-banana-1560919357-4959257.jpeg",
    "https://images-eu.ssl-images-amazon.com/images/I/71uWsdpv0ZL._AC_UL604_SR604,400_.jpg",
  ];
  final List<String> titleList = [
    "Bell Pepper Red",
    "Egg Chicken Red",
    "Organic Bananas",
    "Fresh Atta",
  ];
  final List<String> subtitleList = [
    "1 Kg,Price",
    "4 Pcs,Price",
    "12 Pcs,Price",
    "1 kG,Price"
  ];
  final List<String> priceList = [
    "2.36",
    "3.99",
    "4.99",
    "4.32"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text('My Cart',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(

                    child: Row(
                      children: [
                         Container(
                             height: 100,
                             width: 100,
                             child: Image.network(imageList[index],fit: BoxFit.cover,)),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text(titleList[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text(subtitleList[index]),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                    mini: true,
                                    child: Icon(Icons.remove),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.grey,

                                    onPressed: () {}
                                ),
                                SizedBox(width: 10,),
                                Text('1',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                SizedBox(width: 10,),
                                FloatingActionButton(
                                  elevation: 0,
                                    mini: true,
                                    child: Icon(Icons.add),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),

                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.green,

                                    onPressed: () {}
                                ),


                              ],
                            ),

                          ],
                        ),
                       SizedBox(
                         width: 18,
                       ),
                       Container(
                         height: 150,
                         width: 100,
                         child:  Column(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 14),
                         child: IconButton(
                           icon: Icon(
                             Icons.close,
                           ),
                           iconSize: 20,
                           color: Colors.grey,

                           onPressed: () {},
                         ),

                       ),
                             SizedBox(height: 30,),
                             Text("\$" +priceList[index],style: TextStyle(fontWeight: FontWeight.bold),)





                           ],


                         ),
                       )



                      ],
                    ),


                  ),
                );
              },
              separatorBuilder: (context, position) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Divider(
                    thickness: 0.5,
                  )
                );
              },
              itemCount: imageList.length,
            ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
               child: Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: ()  {

                    },
                    child: Row(
                      children: [
                        //Icon(Icons.logout, color: Colors.green,),
                        SizedBox(width: 100,),
                        Text("Go to checkout", style: TextStyle(color: Colors.white),),
                        SizedBox(width: 30,),
                        Container(
                          height: 20,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.green.shade300
                          ),
                          child: Text('\$12.96'),
                        )
                      ],
                    )),
            ),
             ),
          ],
        ),




    ),
    );
  }
}
