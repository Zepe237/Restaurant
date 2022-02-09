import 'package:flutter/material.dart';
import 'package:restaurant/constants/colors.dart';
import '../../models/food.dart';
class FoodItem extends StatelessWidget {
  final Food food;
  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.asset(
              food.imageUrl , 
              fit: BoxFit.cover,
            ),
            
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 20,left: 10,right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(food.name , style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                      ),),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                  SizedBox(
                    height:5
                  ),
                  Text(food.desc , style: TextStyle(
                    color: food.hightlight ? kPrimaryColor : 
                    Colors.grey.withOpacity(0.8) 
                  ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      
                    Text('${food.price}' , 
                      style: TextStyle(fontSize: 18 , 
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(width: 2,),
                    Text('F' , 
                      style: TextStyle(fontSize: 10 , 
                      fontWeight: FontWeight.bold
                      ),
                    ),
                    ],
                  )
                ],
              ),
            )
          )
        ],
      ),

    );
  }
}