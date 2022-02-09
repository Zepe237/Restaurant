class Food{
    String imageUrl ;
    String desc ;
    String name ;
    String waitTime ;
    num score ;
    String cal ;
    num price ;
    num quantity ;
    List<Map<String , String>> ingredients;
    String about ;
    bool hightlight ;

    Food(this.imageUrl,
      this.desc,
      this.name,
      this.waitTime,
      this.score,
      this.cal,
      this.price,
      this.quantity,
      this.ingredients,
      this.about,
      {this.hightlight = false}
    );
    static List<Food> generateRecommandFoods(){
      return [
        Food('assets/images/food3.jpg', 
        'N°1 in sale', 'Malaxé de banane', 
        '50 min', 
        4.8, 
        '35 kcal', 
        2500, 
        1, 
        [
         {'Noodle':'assets/images/percil.jpg'},
         {'ginginbre':'assets/images/percil.jpg'}, 
         {'piment':'assets/images/percil.jpg'}
        ], 
        'simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca '),

        Food('assets/images/food4.jpg', 
        'N°1 in sale', 'Braisé de viande', 
        '45 min', 
        4.8, 
        '56 kcal', 
        5000, 
        1, 
        [
          {'Noodle':'assets/images/percil.jpg'}
        ], 
        'simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca  '),

        Food('assets/images/pizza.jpg', 
        'N°1 in sale', 'pizza au fromage', 
        '45 min', 
        4.8, 
        '56 kcal', 
        5000, 
        1, 
        [
          {'Noodle':'assets/images/percil.jpg'}
        ], 
        'simply cook it like any food '),

        Food('assets/images/pizza2.jpg', 
        'N°1 in sale', 'Pizza', 
        '45 min', 
        4.8, 
        '56 kcal', 
        5000, 
        1, 
        [
          {'Noodle':'assets/images/percil.jpg'}
        ], 
        'simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca  '),
      ];

      
        
    }

     static List<Food> generatePopularFoods(){
      return [
        Food('assets/images/food.jpg', 
        'N°1 in sale', 'Malaxé de banane', 
        '50 min', 
        4.8, 
        '35 kcal', 
        2500, 
        1, 
        [
          {'Noodle':'assets/images/percil.jpg'}
        ], 
        'simply cook it like any food '),

        Food('assets/images/food2.jpg', 
        'N°1 in sale', 'Braisé de viande', 
        '45 min', 
        4.8, 
        '56 kcal', 
        5000, 
        1, 
        [
          {'Noodle':'assets/images/percil.jpg'}
        ], 
        'simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca simply cook it like any food and it is very good for health lorem ipsum dolorsdj je suis tres content lorsque je mange ca  ')
      ];
      
    }
}