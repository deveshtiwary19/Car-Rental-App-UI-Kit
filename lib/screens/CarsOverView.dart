import 'package:car_app_uikit/utilities/utils.dart';
import 'package:car_app_uikit/widgets/cars_grid.dart';
import 'package:flutter/material.dart';

class CarsOverViewScreen extends StatelessWidget {
  const CarsOverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.manage_accounts,
            ),
          )
        ],
        leading: Icon(
          Icons.menu,
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Ok Cars',
          style: SubHeadingStyle,
        ),
      ),
      body: ListView(
        children: [
          //Following is the banner we are going to show at the top
          Container(
            margin: EdgeInsets.only(top: 12, left: 14, right: 14, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).primaryColor,
              boxShadow: [
                BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 1)
              ],
            ),
            width: double.infinity,
            height: 200,
            child: ClipRect(
              child: Image.asset('assets/Banner.jpg'),
            ),
          ),

          //Following is the heading for sponser brands
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
            child: Text(
              '  Sponser Brands',
              style: MainHeadingStyle,
            ),
          ),

          //Following will be the bar, to show three brands
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).primaryColor,
              boxShadow: [
                BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 1)
              ],
            ),
            margin: EdgeInsets.all(14),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Following is Container 1, for company 1
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            spreadRadius: 1)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/honda_ic.jpg',
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            width: 50,
                            child: Text(
                              'Honda',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Following is Container 2, for company 2
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            spreadRadius: 1)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/bmw_ic.jpg',
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            width: 50,
                            child: Text(
                              'BMW',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Following is Container 3, for company 3
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            spreadRadius: 1)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/mahindra_ic.jpg',
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            width: 50,
                            child: Text(
                              'Mahindra',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Following is Container 4, for company 4
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).primaryColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            spreadRadius: 1)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/mercedes_ic.jpg',
                            width: 30,
                            height: 30,
                          ),
                          Container(
                            width: 50,
                            child: Text(
                              'Mercedes',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Following is the Heading for the overview page
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
            child: Text(
              '  Avilable Cars',
              style: MainHeadingStyle,
            ),
          ),

          //Following is the grid for the Car items
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarsGrid(),
          ),
        ],
      ),
    );
  }
}
