import 'food.dart';
class Restaurant{
  String name ;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map <String , List<Food>> menu ;

  Restaurant(this.name ,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu
  );
  static Restaurant generateResrtaurant(){
    return Restaurant('feusap', '1-30 min', '2.4km', 'Restaurant', 'assets/images/logo_feusap.png', 'les vertus des mets traditionnels', 4.7, {
      'Recommand': Food.generateRecommandFoods(),
      'popular': Food.generatePopularFoods(),
      'Nodles': [],
      'Pizza': [],
    });
  }

}