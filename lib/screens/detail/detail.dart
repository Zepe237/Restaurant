import'package:flutter/material.dart' ;
import 'package:restaurant/constants/colors.dart';
import 'package:restaurant/screens/detail/widget/food_detail.dart';
import 'package:restaurant/screens/detail/widget/food_image.dart';
import 'package:restaurant/screens/widgets/custom_app_bar.dart';
import '../models/food.dart';
class DatailPage extends StatelessWidget {
 final Food food ;
 DatailPage(this.food) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined, 
              Icons.favorite_outline,
              leftCallback: ()=> Navigator.of(context).pop(),
            ),
            FoodImg(food),
            FoodDetail(food),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(onPressed: (){},
          fillColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.shopping_bag_outlined , 
              color: Colors.black, 
              size: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(food.quantity.toString(), style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
              )
            ],
          ),
        ),
      ),
    );
  }
}