import 'package:car_app_uikit/models/cars.dart';
import 'package:car_app_uikit/screens/car_detail.dart';
import 'package:car_app_uikit/utilities/utils.dart';
import 'package:flutter/material.dart';

class CarsGrid extends StatefulWidget {
  const CarsGrid({Key? key}) : super(key: key);

  @override
  _CarsGridState createState() => _CarsGridState();
}

class _CarsGridState extends State<CarsGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Following is the attribute to make the gridview, scrollable
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder: (ctx, i) {
        //Returning the required itemLayout for the car
        return Padding(
          padding: const EdgeInsets.all(5),
          child: GestureDetector(
            onTap: () {
              //The respective car is tapped, so we need to open the car detail page
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return CarDetail(
                    title: allCars.cars[i].title,
                    price: allCars.cars[i].price,
                    color: allCars.cars[i].color,
                    gearbox: allCars.cars[i].gearbox,
                    fuel: allCars.cars[i].fuel,
                    brand: allCars.cars[i].brand,
                    path: allCars.cars[i].path);
              }));
            },
            child: Container(
              //Setting a margin according to the item index, to get a staggered kind of look
              margin: EdgeInsets.only(
                  top: i.isEven ? 0 : 20,
                  bottom: i.isEven ? 20 : 0,
                  left: 4,
                  right: 4),
              //Some decoration to our main Container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 5, spreadRadius: 1)
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  //First, the image
                  Hero(
                    tag: allCars.cars[i].title,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: ClipRRect(
                        child: Image.asset(allCars.cars[i].path),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  //The name of teh car
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 8, bottom: 3.5),
                    child: Text(
                      allCars.cars[i].title,
                      style: BasicHeading,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  //The price
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 8, top: 4),
                    child: Text(
                      allCars.cars[i].price.toString() + " \$",
                      textAlign: TextAlign.start,
                      style: SubHeadingStyle,
                    ),
                  ),
                  //The per month Tag
                  Container(
                    width: double.maxFinite,
                    child: Text(
                      'per month',
                      style: TextStyle(fontSize: 12),
                    ),
                    margin: EdgeInsets.only(bottom: 5, left: 10),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.89,
      ),
    );
  }
}
