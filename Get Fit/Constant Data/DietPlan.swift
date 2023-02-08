//
//  DietPlan.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 13/10/22.
//

import UIKit

/// Mock data for Diet Plan VC and Nutrients VC
struct DietPlan
{
    static let foodCategoryTitle: [String] = ["BreakFast","Brunch","Lunch","Drinks","Supper","Dinner"]
    
    static let foodCardViewData: [FoodCardModel] =
    [
        FoodCardModel(foodCategory: "Breakfast",
                      
                      cardImage: ["https://choosingchia.com/jessh-jessh/uploads/2022/01/Chocolate-Oatmeal-8.jpg","https://www.thespruceeats.com/thmb/67fUhzexgkuAZZkNPCzN_L54Vn8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/banana-smoothie-recipes-759606-hero-01-d2abaa79f3204030a0ec0a8940456acc.jpg",
                                  "https://somethingaboutsandwiches.com/wp-content/uploads/2022/02/strawberry-jam-sandwiches.jpg","https://food.fnr.sndimg.com/content/dam/images/food/fullset/2013/12/9/0/FNK_French-Omelet_s4x3.jpg.rend.hgtvcom.826.620.suffix/1386784369204.jpeg"],
                      
            foodName: ["Chocolate Oatmeal", "Banana Shake","Bread Jam","French omelette"],
                      
            foodQuantity: [23.0,73.9,21.0,22.3,33.3],
            
            foodCalorie: [215,120,300,450,310]),
        
        FoodCardModel(foodCategory: "Lunch", cardImage: ["https://easyhealthyrecipes.com/wp-content/uploads/2022/06/grilled-chicken-rice-16.jpg","https://www.cubesnjuliennes.com/wp-content/uploads/2020/01/Chicken-Biryani.jpg","https://img.taste.com.au/7kiSTr2Y/w720-h480-cfill-q80/taste/2018/01/chicken-breast-134275-2.jpg","https://www.recipetineats.com/wp-content/uploads/2017/01/Chicken-Shawarma-Wrap_3.jpg"], foodName: ["Rice & Chicken","Chicken Biryani","Low Fat Pasta","chicken shawarma"], foodQuantity: [223.0,113.9,121.0,122.3,143.3], foodCalorie: [120,140,350,490,320]),
        
        FoodCardModel(foodCategory: "Dinner", cardImage: ["https://images.immediate.co.uk/production/volatile/sites/30/2020/08/prawn-harissa-spaghetti-d29786f.jpg?quality=90&webp=true&resize=440,400","https://images.immediate.co.uk/production/volatile/sites/30/2020/08/spinach-sweet-potato-and-lentil-dhal-be8fae5.jpg?quality=90&webp=true&resize=440,400","https://images.immediate.co.uk/production/volatile/sites/30/2020/08/simple-fish-stew-1d0b259.jpg?quality=90&webp=true&resize=440,400","https://www.whiskaffair.com/wp-content/uploads/2020/06/Chicken-Tikka-2-3.jpg"], foodName: ["Prawn & harissa spaghetti","Spinach, sweet potato & lentil dhal","Simple fish stew","Healthy tikka masala"], foodQuantity: [100,230,150,180], foodCalorie: [200,250,420,350])
    ]
    
    static let foodNutientsData: [FoodNutrientsModel] =
    [
        FoodNutrientsModel(heading: "Enengy", value: 215.5, unit: "kcal"),
        FoodNutrientsModel(heading: "Carbs", value: 39, unit: "g"),
        FoodNutrientsModel(heading: "Protein", value: 7, unit: "g"),
        FoodNutrientsModel(heading: "Fat", value: 5, unit: "g"),
        FoodNutrientsModel(heading: "Sugers", value: 7, unit: "g")
    ]
    
    static let foodIngredientsData: [IngredientModel] =
    [
        IngredientModel(ingredientName: "1 cup rolled oats", ingredientImage: "https://post.healthline.com/wp-content/uploads/2020/03/oats-oatmeal-732x549-thumbnail.jpg", ingredientQuantity: 10.0),
        IngredientModel(ingredientName: "1 cup plant-based milk", ingredientImage: "https://ik.bebodywise.com/mosaic-wellness/image/upload/f_auto,w_1000,c_limit/v1643983013/BW%20BLOG/Untitled-design---2022-02-04T192644.467_11zon.jpg", ingredientQuantity: 62.0),
        IngredientModel(ingredientName: "2–3 tablespoon cocoa powder", ingredientImage: "https://upload.wikimedia.org/wikipedia/commons/4/47/Chopped_white_chocolate_chunks.jpg", ingredientQuantity: 40.0),
        IngredientModel(ingredientName: "3 tbsp Peanut Butter", ingredientImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/PeanutButter.jpg/640px-PeanutButter.jpg", ingredientQuantity: 46.0),
        IngredientModel(ingredientName: "1 cup water", ingredientImage: "https://domf5oio6qrcr.cloudfront.net/medialibrary/7909/conversions/b8a1309a-ba53-48c7-bca3-9c36aab2338a-thumb.jpg", ingredientQuantity: 23.0),
        IngredientModel(ingredientName: "2–3 tablespoon cocoa powder", ingredientImage: "https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQwjelsBHI8zQP_ehKQdt1XYq_Nq3Ij8zVKQCtrbnIubSFLQ7wS9QpwiLemME2pLydvre1Q53ySeGBSkK8", ingredientQuantity: 11.0),
        IngredientModel(ingredientName: "½ tsp vanilla extract", ingredientImage: "https://www.simplyrecipes.com/thmb/gz0CxuzvrOPqDPOi9J3F0jN1knQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Vanilla-Extract-LEAD-1-8e0a18a28da645148ce248208110a008.jpg", ingredientQuantity: 8.0),
        IngredientModel(ingredientName: "1 tsp cinnemon powder", ingredientImage: "https://5.imimg.com/data5/TV/AR/AY/SELLER-15392015/cinnemon-extract-cinnamomum-verum-10-by-titration-500x500.jpg", ingredientQuantity: 3.0)
        
    
    ]
    
    struct PreparationProcedure
    {
        static let steps: [String] =
        [
            "Combine all ingredients in a small pot. Mix until fullly combined three times.",
            "Transfer the pot to a stove.Cook over medium heat, stirring frequently, until thick and creamy. This should take about 6-8 minutes. Stir the oatmeal often to prevent it from sticking to the bottom of the pot.",
            "Transfer oatmeal to bowl(s). Add your favorite toppings. Enjoy!"
        ]
    }
    
}
