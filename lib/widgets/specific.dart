import 'package:car_app_uikit/utilities/utils.dart';
import 'package:flutter/material.dart';

//Following is teh widget to display the price card
class SpecificsCart extends StatelessWidget {
  final double price;
  final String name;
  final String name2;
  final bool selected;

  const SpecificsCart(
      {required this.price,
      required this.name,
      required this.name2,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 90,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 2, spreadRadius: 1)
        ],
        color: selected
            ? Theme.of(context).accentColor
            : Theme.of(context).primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            price.toString(),
            style: SubHeadingStyle,
          ),
          Container(
            margin: EdgeInsets.only(left: 1.5),
            child: Text(
              name2,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

//Following is the Widget to dsiplay the specifications card
class SpecificsCart2 extends StatelessWidget {
  final String name;
  final String name2;

  SpecificsCart2({required this.name, required this.name2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 65,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 2, spreadRadius: 1)
        ],
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.only(left: 1.5),
            child: SizedBox(
              child: Text(
                name2,
                style: SubHeadingStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
