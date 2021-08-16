//Following willbe the screen, to show the full detail of the car
import 'package:car_app_uikit/models/cars.dart';
import 'package:car_app_uikit/utilities/utils.dart';
import 'package:car_app_uikit/widgets/specific.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CarDetail extends StatelessWidget {
  //Getting teh details, we need to display on the screen
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  const CarDetail(
      {required this.title,
      required this.price,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        //The leading back button
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 2, spreadRadius: 1)
                ],
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(7),
                color: Theme.of(context).primaryColor),
            child: IconButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  } else {
                    SystemNavigator.pop();
                  }
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                )),
          ),
        ),
        elevation: 0, //So, that appbar synchronizes with the screen
        actions: [
          //The following is the bookmark icon
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 2, spreadRadius: 1)
                ],
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(7),
                color: Theme.of(context).accentColor,
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
          ),
          //The following is the
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, blurRadius: 2, spreadRadius: 1)
                  ],
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(7),
                  color: Theme.of(context).primaryColor),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                  )),
            ),
          ),
        ],
      ),
      //Following is the main body of the page
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //The title of the car
                Container(
                  margin: EdgeInsets.only(left: 15, top: 25),
                  child: Text(
                    title,
                    style: MainHeadingStyle,
                  ),
                ),
                //The brand
                Container(
                  margin: EdgeInsets.only(left: 16, top: 4),
                  child: Text(
                    brand,
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ),
                //The image of car
                Hero(
                  child: Image.asset(path),
                  tag: title,
                ),

                SizedBox(
                  height: 10,
                ),

                //The row to show prices
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //The 12 month price
                    SpecificsCart(
                      name: '12 Months',
                      price: price * 12,
                      name2: 'USD',
                      selected: true,
                    ),
                    //The 6 month price
                    SpecificsCart(
                      name: '6 Months',
                      price: price * 6,
                      name2: 'USD',
                      selected: false,
                    ),
                    //The monh price
                    SpecificsCart(
                      name: '1 Month',
                      price: price,
                      name2: 'USD',
                      selected: false,
                    ),
                  ],
                ),

                //Now, the widgets to show the specifications
                Container(
                  margin: EdgeInsets.only(left: 15, top: 30, bottom: 15),
                  child: Text(
                    'SPECIFICATIONS',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //The 12 month price
                    SpecificsCart2(
                      name: 'Color',
                      name2: color,
                    ),
                    //The 6 month price
                    SpecificsCart2(
                      name: 'Gearbox',
                      name2: gearbox,
                    ),
                    //The monh price
                    SpecificsCart2(
                      name: 'Fuel',
                      name2: fuel,
                    ),
                  ],
                ),

                //Now, the discount part Containber
                Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 15, right: 15, top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26, blurRadius: 2, spreadRadius: 1)
                    ],
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //The Conatiner for Car Model
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            margin: EdgeInsets.only(left: 15, right: 15),
                            child: Text(
                              title,
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Container(
                            child: Icon(
                              Icons.arrow_drop_down_circle,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                      //The Conatiner for Car Model
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30, right: 30),
                              child: Text(
                                'Weekly Package',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.arrow_drop_down_circle,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),

          //The conatiner for the book button
          Positioned(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(right: 10),
                height: 80,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, blurRadius: 5, spreadRadius: 2)
                  ],
                  color: Theme.of(context).primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          margin: EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            title,
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.arrow_drop_down_circle,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).accentColor),
                      child: Center(
                        child: Text(
                          'Book Now',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
