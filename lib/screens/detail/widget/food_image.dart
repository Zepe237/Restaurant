import 'package:flutter/material.dart';
import 'package:restaurant/constants/colors.dart';
import '../../models/food.dart';
class FoodImg extends StatelessWidget {
 final Food food ;
 FoodImg(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
            child: Container(),
          flex: 1,
          ),Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color: kBackground ,
              ),
            ),
            flex: 1,
          )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 115,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 120,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child:Image.asset(
                food.imageUrl,
                height: 210,
                width: 210,
                fit: BoxFit.cover,
              ), 
              )
              )
            ),
            
            ),
        ],
      ),
    );
  }
}