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
                      
                      foodQuantity: [23.0,73.9,21.0,22.3],
                      
                      foodCalorie: [215.5,250,309,393]),
        
        FoodCardModel(foodCategory: "Lunch", cardImage: ["https://easyhealthyrecipes.com/wp-content/uploads/2022/06/grilled-chicken-rice-16.jpg","https://img.taste.com.au/7kiSTr2Y/w720-h480-cfill-q80/taste/2018/01/chicken-breast-134275-2.jpg","https://www.recipetineats.com/wp-content/uploads/2017/01/Chicken-Shawarma-Wrap_3.jpg"], foodName: ["Rice & Chicken","Low Fat Pasta","chicken shawarma"], foodQuantity: [223.0,113.9,121.0], foodCalorie: [450,216,287,]),
        
        FoodCardModel(foodCategory: "Dinner", cardImage: ["https://images.immediate.co.uk/production/volatile/sites/30/2020/08/prawn-harissa-spaghetti-d29786f.jpg?quality=90&webp=true&resize=440,400","https://images.immediate.co.uk/production/volatile/sites/30/2020/08/spinach-sweet-potato-and-lentil-dhal-be8fae5.jpg?quality=90&webp=true&resize=440,400","https://images.immediate.co.uk/production/volatile/sites/30/2020/08/simple-fish-stew-1d0b259.jpg?quality=90&webp=true&resize=440,400"], foodName: ["Prawn & harissa spaghetti","Spinach, sweet potato & lentil dhal","Simple fish stew"], foodQuantity: [100,230,150], foodCalorie: [511,397,346])
    ]
    
    static let foodNutientsData: [[FoodNutrientsModel]] =
    [
        // Breakfast Section
        // Food Nutrients for Chocolate Oats
        [
            FoodNutrientsModel(heading: "Enengy", value: 215.5, unit: "kcal"),
            FoodNutrientsModel(heading: "Carbs", value: 39, unit: "g"),
            FoodNutrientsModel(heading: "Protein", value: 7, unit: "g"),
            FoodNutrientsModel(heading: "Fat", value: 5, unit: "g"),
            FoodNutrientsModel(heading: "Sugers", value: 7, unit: "g")
        ],
        // Food Nutrients for Banana Milkshake
        [
            FoodNutrientsModel(heading: "Enengy", value: 250, unit: "kcal"),
            FoodNutrientsModel(heading: "Carbs", value: 40, unit: "g"),
            FoodNutrientsModel(heading: "Protein", value: 1, unit: "g"),
            FoodNutrientsModel(heading: "Fat", value: 9, unit: "g"),
            FoodNutrientsModel(heading: "Sugers", value: 22, unit: "g")
        ],
        // Food Nutrients for Bread Jam
        [
            FoodNutrientsModel(heading: "Enengy", value: 309, unit: "kcal"),
            FoodNutrientsModel(heading: "Carbs", value: 40, unit: "g"),
            FoodNutrientsModel(heading: "Protein", value: 6, unit: "g"),
            FoodNutrientsModel(heading: "Fat", value: 14, unit: "g"),
            FoodNutrientsModel(heading: "Sugers", value: 13, unit: "g")
        ],
        // Food Nutrients for French omelette
        [
            FoodNutrientsModel(heading: "Enengy", value: 393, unit: "kcal"),
            FoodNutrientsModel(heading: "Carbs", value: 1, unit: "g"),
            FoodNutrientsModel(heading: "Protein", value: 17, unit: "g"),
            FoodNutrientsModel(heading: "Fat", value: 36, unit: "g"),
            FoodNutrientsModel(heading: "Sugers", value: 0.7, unit: "g")
        ],
        
        // Lunch Section
        // Food Nutrients for Rice & Chicken.
        [
            FoodNutrientsModel(heading: "Enengy", value: 450, unit: "kcal"),
            FoodNutrientsModel(heading: "Carbs", value: 60, unit: "g"),
            FoodNutrientsModel(heading: "Protein", value: 25, unit: "g"),
            FoodNutrientsModel(heading: "Fat", value: 30, unit: "g"),
            FoodNutrientsModel(heading: "Sugers", value: 10, unit: "g")
        ],
       
        // Food Nutrients for Low Fat Pasta.
        [
            FoodNutrientsModel(heading: "Enengy", value: 216, unit: "kcal"),
            FoodNutrientsModel(heading: "Carbs", value: 36.5, unit: "g"),
            FoodNutrientsModel(heading: "Protein", value: 10.5, unit: "g"),
            FoodNutrientsModel(heading: "Fat", value: 3.1, unit: "g"),
            FoodNutrientsModel(heading: "Sugers", value: 0, unit: "g")
        ],
        // Food Nutrients for Chicken Shawarma.
        [
            FoodNutrientsModel(heading: "Enengy", value: 287, unit: "kcal"),
            FoodNutrientsModel(heading: "Carbs", value: 10, unit: "g"),
            FoodNutrientsModel(heading: "Protein", value: 29, unit: "g"),
            FoodNutrientsModel(heading: "Fat", value: 14, unit: "g"),
            FoodNutrientsModel(heading: "Sugers", value: 4, unit: "g")
        ],
        
        // Dinner Section
        // Food Nutrients for Prawn & harissa spaghetti.
        [
            FoodNutrientsModel(heading: "Enengy", value: 511, unit: "kcal"),
            FoodNutrientsModel(heading: "Carbs", value: 72, unit: "g"),
            FoodNutrientsModel(heading: "Protein", value: 22, unit: "g"),
            FoodNutrientsModel(heading: "Fat", value: 13, unit: "g"),
            FoodNutrientsModel(heading: "Sugers", value: 6, unit: "g")
        ],
        // Food Nutrients for Spinach, sweet potato & lentil dhal.
        [
            FoodNutrientsModel(heading: "Enengy", value: 397, unit: "kcal"),
            FoodNutrientsModel(heading: "Carbs", value: 65, unit: "g"),
            FoodNutrientsModel(heading: "Protein", value: 18, unit: "g"),
            FoodNutrientsModel(heading: "Fat", value: 5, unit: "g"),
            FoodNutrientsModel(heading: "Sugers", value: 19, unit: "g")
        ],
        // Food Nutrients for Simple fish stew.
        [
            FoodNutrientsModel(heading: "Enengy", value: 346, unit: "kcal"),
            FoodNutrientsModel(heading: "Carbs", value: 20, unit: "g"),
            FoodNutrientsModel(heading: "Protein", value: 42, unit: "g"),
            FoodNutrientsModel(heading: "Fat", value: 8, unit: "g"),
            FoodNutrientsModel(heading: "Sugers", value: 17, unit: "g")
        ]
    ]
    
    static let foodIngredientsData: [[IngredientModel]] =
    [
        // Breakfast
        // Ingredient for Chocolate Oats.
        [IngredientModel(ingredientName: "1 cup rolled oats", ingredientImage: "https://post.healthline.com/wp-content/uploads/2020/03/oats-oatmeal-732x549-thumbnail.jpg", ingredientQuantity: 10.0),
         IngredientModel(ingredientName: "1 cup plant-based milk", ingredientImage: "https://ik.bebodywise.com/mosaic-wellness/image/upload/f_auto,w_1000,c_limit/v1643983013/BW%20BLOG/Untitled-design---2022-02-04T192644.467_11zon.jpg", ingredientQuantity: 62.0),
         IngredientModel(ingredientName: "2–3 tablespoon cocoa powder", ingredientImage: "https://upload.wikimedia.org/wikipedia/commons/4/47/Chopped_white_chocolate_chunks.jpg", ingredientQuantity: 40.0),
         IngredientModel(ingredientName: "3 tbsp Peanut Butter", ingredientImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/PeanutButter.jpg/640px-PeanutButter.jpg", ingredientQuantity: 46.0),
         IngredientModel(ingredientName: "1 cup water", ingredientImage: "https://domf5oio6qrcr.cloudfront.net/medialibrary/7909/conversions/b8a1309a-ba53-48c7-bca3-9c36aab2338a-thumb.jpg", ingredientQuantity: 23.0),
         IngredientModel(ingredientName: "2–3 tablespoon cocoa powder", ingredientImage: "https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQwjelsBHI8zQP_ehKQdt1XYq_Nq3Ij8zVKQCtrbnIubSFLQ7wS9QpwiLemME2pLydvre1Q53ySeGBSkK8", ingredientQuantity: 11.0),
         IngredientModel(ingredientName: "½ tsp vanilla extract", ingredientImage: "https://www.simplyrecipes.com/thmb/gz0CxuzvrOPqDPOi9J3F0jN1knQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Vanilla-Extract-LEAD-1-8e0a18a28da645148ce248208110a008.jpg", ingredientQuantity: 8.0),
         IngredientModel(ingredientName: "1 tsp cinnemon powder", ingredientImage: "https://5.imimg.com/data5/TV/AR/AY/SELLER-15392015/cinnemon-extract-cinnamomum-verum-10-by-titration-500x500.jpg", ingredientQuantity: 3.0)
        ],
        // Ingredient for Banana Milkshake.
        [
            IngredientModel(ingredientName: "2 cups Coconut Milk", ingredientImage: "https://i.ytimg.com/vi/ZbXBSRmbxUM/maxresdefault.jpg", ingredientQuantity: 200.0),
            IngredientModel(ingredientName: "3 bananas", ingredientImage: "https://cdn1.sph.harvard.edu/wp-content/uploads/sites/30/2018/08/bananas-1354785_1920.jpg", ingredientQuantity: 150.0),
            IngredientModel(ingredientName: "2 to 3 tablespoons raw sugar or as required, optional", ingredientImage: "https://media.istockphoto.com/id/516358950/photo/portion-of-white-sugar.jpg?s=612x612&w=0&k=20&c=MzRtVTXjrft4xEMvGbOozroo2fZYsiDjSF2cPkINMhI=", ingredientQuantity: 45.0),
            IngredientModel(ingredientName: "½ teaspoon vanilla extract or 1 to 2 pinches of vanilla powder (optional)", ingredientImage: "https://www.simplyrecipes.com/thmb/gz0CxuzvrOPqDPOi9J3F0jN1knQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Vanilla-Extract-LEAD-1-8e0a18a28da645148ce248208110a008.jpg", ingredientQuantity: 1.0),
            IngredientModel(ingredientName: "¼ teaspoon cardamom powder or ground cinnamon powder for garnish – (optional)", ingredientImage: "https://www.jiithyaschocolate.com/image/cache/data/dhirens/Cardamom-powder-900x600.jpg", ingredientQuantity: 1.5)
        ],
        // Ingredient for Bread and Jam.
        [IngredientModel(ingredientName: "2 slices Bread", ingredientImage: "https://www.joyofbaking.com/images/whitesandwichbread.jpg", ingredientQuantity: 10.0),
         IngredientModel(ingredientName: "1 tbsp Butter", ingredientImage: "https://www.southernliving.com/thmb/e9PRDV-qQ9F1GRYh4C_SBAi4foI=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/How_To_Soften_Butter_013-2000-61e8b4e1ad9c431887472483ae714dbb.jpg", ingredientQuantity: 15.0),
         IngredientModel(ingredientName: "1 tbsp Jam", ingredientImage: "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/4B7C3510-7041-4B5D-8000-1D10B1BA4678/Derivates/6749ac4e-586d-4055-9df2-5a96832897f6.jpg", ingredientQuantity: 15.0)
        ],
        // Ingredient for French omelette.
        [IngredientModel(ingredientName: "3 large fresh eggs", ingredientImage: "https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg", ingredientQuantity: 180.0),
         IngredientModel(ingredientName: "½ teaspoon cold water", ingredientImage: "https://d2jx2rerrg6sh3.cloudfront.net/image-handler/ts/20210712083540/ri/673/picture/2021/7/shutterstock_1548860402.jpg", ingredientQuantity: 10.0),
         IngredientModel(ingredientName: "¼ teaspoon kosher salt", ingredientImage: "https://jamiegeller.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY1NTI0ODE1NDEwOTYzNDgz/kosher-salt.jpg", ingredientQuantity: 2.0),
         IngredientModel(ingredientName: "2 tablespoons unsalted butter, divided", ingredientImage: "https://www.southernliving.com/thmb/e9PRDV-qQ9F1GRYh4C_SBAi4foI=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/How_To_Soften_Butter_013-2000-61e8b4e1ad9c431887472483ae714dbb.jpg", ingredientQuantity: 30.0),
         IngredientModel(ingredientName: "1 pinch cayenne or white pepper to taste (Optional)", ingredientImage: "https://cdn2.stylecraze.com/wp-content/uploads/2013/04/540_294083195.jpg", ingredientQuantity: 1)
         
        ],
        
        // Lunch Section
        // Ingredient for Rice & Chicken.
        [IngredientModel(ingredientName: "1 lb chicken breast, cut into chunks", ingredientImage: "https://static.freshtohome.com/media/catalog/product/cache/1/image/18ae109e34f485bd0b0c075abec96b2e/c/h/chicken_breast_fillet_1.jpg", ingredientQuantity: 450),
         IngredientModel(ingredientName: "1 teaspoon garlic powder", ingredientImage: "https://nourcery.in/wp-content/uploads/2022/08/AdobeStock_322407079.jpeg", ingredientQuantity: 5),
         IngredientModel(ingredientName: "1/2 teaspoon salt", ingredientImage: "https://www.houstonmethodist.org/-/media/images/contenthub/article-images/nutrition/2022/hub_toomuchsaltdiet_article.ashx?mw=1382&hash=F50C55D18CC98F10A9560D1C96932614", ingredientQuantity: 3),
         IngredientModel(ingredientName: "1/2 teaspoon pepper", ingredientImage: "https://health.clevelandclinic.org/wp-content/uploads/sites/3/2021/07/blackPepper-185067429-770x533-1-745x490.jpg", ingredientQuantity: 2),
         IngredientModel(ingredientName: "1 tablespoon olive oil", ingredientImage: "https://cdn.shopify.com/s/files/1/0608/2868/0446/products/FreeGreatPicture.com_7112_olive_oil__28975.1383459936.1280.1280_45d067f1-2f03-485e-89b4-b7d952af7986_1024x1024.jpg?v=1636071841", ingredientQuantity: 15),
         IngredientModel(ingredientName: "3 cloves garlic, minced", ingredientImage: "https://www.mashed.com/img/gallery/what-is-a-garlic-clove-really-and-how-do-you-use-it/intro-1628012061.webp", ingredientQuantity: 5),
         IngredientModel(ingredientName: "3/4 cup long grain white rice", ingredientImage: "https://aicmtinternational.com/wp-content/uploads/2021/07/Long-Grain-White-Rice.jpg", ingredientQuantity: 400),
         IngredientModel(ingredientName: "2 1/2 cups chicken broth", ingredientImage: "https://www.thecookierookie.com/wp-content/uploads/2018/09/homemade-chicken-stock-broth-3-of-3.jpg", ingredientQuantity: 250),
         IngredientModel(ingredientName: "2 cups baby spinach", ingredientImage: "https://cdn.shopify.com/s/files/1/0017/9234/4153/products/Spinach43_1024x1024@2x.jpg?v=1602165575", ingredientQuantity: 100),
         IngredientModel(ingredientName: "2 tablespoons heavy cream", ingredientImage: "https://static.toiimg.com/thumb/68811614.cms?width=680&height=512&imgsize=679470", ingredientQuantity: 30),
         
         
        ],
     
        // Ingredient for Low Fat Pasta.
        [IngredientModel(ingredientName: "280g dried casarecce pasta", ingredientImage: "https://img.freepik.com/premium-photo/healthy-dry-casarecce-pasta-bowl_693630-10346.jpg?w=2000", ingredientQuantity: 280.0),
         IngredientModel(ingredientName: "150g (1 cup) frozen peas", ingredientImage: "https://www.simplywhisked.com/wp-content/uploads/2022/03/How-to-Cook-Frozen-Peas-3.jpg", ingredientQuantity: 150.0),
         IngredientModel(ingredientName: "1 tsp extra virgin olive oil", ingredientImage: "https://cdn.shopify.com/s/files/1/0608/2868/0446/products/FreeGreatPicture.com_7112_olive_oil__28975.1383459936.1280.1280_45d067f1-2f03-485e-89b4-b7d952af7986_1024x1024.jpg?v=1636071841", ingredientQuantity: 2.0),
         IngredientModel(ingredientName: "60ml (1/4 cup) white wine", ingredientImage: "https://sonomawinegarden.com/wp-content/uploads/2022/07/Popular-Types-of-White-Wine.jpg", ingredientQuantity: 60.0),
         IngredientModel(ingredientName: "1 cup fresh basil leaves", ingredientImage: "https://cdn.loveandlemons.com/wp-content/uploads/2019/07/IMG_2600-2-1.jpg", ingredientQuantity: 100),
         IngredientModel(ingredientName: "100g (1/2 cup) light cream cheese, chopped", ingredientImage: "https://cdn.tarladalal.com/members/9306/big/big_low_fat_cream_cheese_recipe_-_how_to_make_low_fat_cream_cheese-12061.jpg?size=696X905", ingredientQuantity: 100),
         IngredientModel(ingredientName: "125g shaved 97% fat-free smoked ham, torn or shredded", ingredientImage: "https://cdn.shopify.com/s/files/1/0668/2207/articles/IMG_9737_1_1512x.jpg?v=1647980264", ingredientQuantity: 125),
         IngredientModel(ingredientName: "3 garlic cloves, finely chopped", ingredientImage: "https://www.mashed.com/img/gallery/what-is-a-garlic-clove-really-and-how-do-you-use-it/intro-1628012061.webp", ingredientQuantity: 10),
         IngredientModel(ingredientName: "3 green shallots, trimmed, sliced", ingredientImage: "https://www.grocery.coop/sites/default/files/wp-content/uploads/2011/06/Scallions_0.jpg", ingredientQuantity: 10)
         
        ],
        // Ingredient for chicken shawarma.
        [IngredientModel(ingredientName: "1 kg / 2 lb chicken thigh fillets , skinless and boneless", ingredientImage: "https://static.freshtohome.com/media/catalog/product/cache/1/small_image/250x167/fcd3bd6c3efbd120e0394bcc9203d80f/c/h/chicken_cubes_1_4_1.jpeg", ingredientQuantity: 1000.0),
         IngredientModel(ingredientName: "1 large garlic clove , minced (or 2 small cloves)", ingredientImage: "https://www.mashed.com/img/gallery/what-is-a-garlic-clove-really-and-how-do-you-use-it/intro-1628012061.webp", ingredientQuantity: 10.0),
         IngredientModel(ingredientName: "1 tbsp ground coriander", ingredientImage: "https://5.imimg.com/data5/RT/JO/MY-35858390/ground-coriander-powder-500x500.jpg", ingredientQuantity: 2.0),
         IngredientModel(ingredientName: "1 tbsp ground cumin", ingredientImage: "https://pipingpotcurry.com/wp-content/uploads/2020/01/Roasted-cumin-powder-Piping-Pot-Curry-4.webp", ingredientQuantity: 15.0),
         IngredientModel(ingredientName: "1 tbsp ground cardamon", ingredientImage: "https://www.tasteofhome.com/wp-content/uploads/2019/05/cardamom-shutterstock_1111588118.jpg?w=1200", ingredientQuantity: 15.0),
         IngredientModel(ingredientName: "1 tsp ground cayenne pepper", ingredientImage: "https://cdn2.stylecraze.com/wp-content/uploads/2013/04/540_294083195.jpg.webp", ingredientQuantity: 5),
         IngredientModel(ingredientName: "2 tsp smoked paprika", ingredientImage: "https://www.healthifyme.com/blog/wp-content/uploads/2022/06/shutterstock_385876042-1-1140x570.jpg", ingredientQuantity: 5),
         IngredientModel(ingredientName: "2 tsp salt", ingredientImage: "https://i.dailymail.co.uk/i/pix/2017/08/02/13/42E72A9C00000578-4753444-image-a-16_1501676857091.jpg", ingredientQuantity: 5),
         IngredientModel(ingredientName: "1 tsp Black pepper", ingredientImage: "https://origin.club/media/catalog/product/cache/86eaafd287624d270d87c663dd3976d5/b/l/black_pepper_powder_1.jpg", ingredientQuantity: 2),
         IngredientModel(ingredientName: "2 tbsp lemon juice", ingredientImage: "https://s3.amazonaws.com/com.niches.production/story_images/new_images/000/004/483/width_1200/how-much-is-in-a-lemon-2.jpg?1630350879", ingredientQuantity: 30),
         IngredientModel(ingredientName: "3 tbsp olive oil", ingredientImage: "https://cdn.shopify.com/s/files/1/0608/2868/0446/products/FreeGreatPicture.com_7112_olive_oil__28975.1383459936.1280.1280_45d067f1-2f03-485e-89b4-b7d952af7986_1024x1024.jpg?v=1636071841", ingredientQuantity: 45),
         IngredientModel(ingredientName: "1 cup Greek yoghurt", ingredientImage: "https://freefoodtips.com/wp-content/uploads/2017/11/How_to_measure_greek_yogurt-770x515.jpg", ingredientQuantity: 150 ),
         IngredientModel(ingredientName: "4-5 flatbreads", ingredientImage: "https://www.recipetineats.com/wp-content/uploads/2014/05/Easy-Soft-Flatbread_3.jpg", ingredientQuantity: 100),
         IngredientModel(ingredientName: "Sliced lettuce", ingredientImage: "https://resources.markon.com/sites/default/files/styles/large/public/pi_photos/Lettuce_Chopped_Hero.jpg", ingredientQuantity: 50),
         IngredientModel(ingredientName: "Tomato slices", ingredientImage: "https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_center,w_730,h_913/k%2Farchive%2F325a93fc7579266ba9808ad0df9bb621da65ac1a", ingredientQuantity: 50),
         IngredientModel(ingredientName: "Red onion , finely sliced", ingredientImage: "https://www.veggieinspired.com/wp-content/uploads/2022/05/quick-pickled-red-onions-slicedonions.webpv", ingredientQuantity: 30),
         IngredientModel(ingredientName: "Cheese , shredded (optional)", ingredientImage: "https://www.eatthis.com/wp-content/uploads/sites/4//media/images/ext/855666897/shredded-swiss-cheese.jpg?quality=82&strip=1&w=1400", ingredientQuantity: 30)
         
        ],

        // Dinner Section
        // Ingredient for Prawn & harissa spaghetti.
        [IngredientModel(ingredientName: "100g long-stem broccoli, cut into thirds", ingredientImage: "https://images.immediate.co.uk/production/volatile/sites/30/2020/02/Broccoli-ab30ab9.jpg?quality=90&webp=true&resize=600,545", ingredientQuantity: 100.0),
         IngredientModel(ingredientName: "180g dried spaghetti, regular or wholemeal", ingredientImage: "https://feelgoodfoodie.net/wp-content/uploads/2020/06/how-to-cook-pasta-6.jpg", ingredientQuantity: 180.0),
         IngredientModel(ingredientName: "2 tbsp olive oil", ingredientImage: "https://cdn.shopify.com/s/files/1/0608/2868/0446/products/FreeGreatPicture.com_7112_olive_oil__28975.1383459936.1280.1280_45d067f1-2f03-485e-89b4-b7d952af7986_1024x1024.jpg?v=1636071841v", ingredientQuantity: 30.0),
         IngredientModel(ingredientName: "1 large garlic clove, lightly bashed", ingredientImage: "https://www.mashed.com/img/gallery/what-is-a-garlic-clove-really-and-how-do-you-use-it/intro-1628012061.webp", ingredientQuantity: 30.0),
         IngredientModel(ingredientName: "150g raw king prawns", ingredientImage: "https://www.great-alaska-seafood.com/products600/16-king-prawns98372047-600.jpg", ingredientQuantity: 150),
         IngredientModel(ingredientName: "150g cherry tomatoes, halved", ingredientImage: "https://theleafandclay.com/wp-content/uploads/2020/12/The-Leaf-And-Clay-Cherry-Tomatoes-Seeds-1536x1051.jpg", ingredientQuantity: 150),
         IngredientModel(ingredientName: "1 heaped tbsp rose harissa paste", ingredientImage: "https://www.nonguiltypleasures.com/wp-content/uploads/2021/09/rose-harissa-paste-1.jpg", ingredientQuantity: 15.0),
         IngredientModel(ingredientName: "1 lemon, finely zested", ingredientImage: "https://newengland.com/wp-content/uploads/2013/11/lemon-zest-dt.jpg", ingredientQuantity: 10)
         
        ],
        // Ingredient for Spinach, sweet potato & lentil dhal.
        [IngredientModel(ingredientName: "1 tbsp sesame oil", ingredientImage: "https://i.ndtvimg.com/i/2015-10/sesame-oil_625x350_81445960641.jpg", ingredientQuantity: 15.0),
         IngredientModel(ingredientName: "1 red onion, finely chopped", ingredientImage: "https://www.veggieinspired.com/wp-content/uploads/2022/05/quick-pickled-red-onions-slicedonions.webpv", ingredientQuantity: 10.0),
         IngredientModel(ingredientName: "thumb-sized piece ginger, peeled and finely chopped", ingredientImage: "https://www.wikihow.com/images/thumb/7/78/Peel-Ginger-Root-Step-1-Version-3.jpg/aid834034-v4-728px-Peel-Ginger-Root-Step-1-Version-3.jpg.webp", ingredientQuantity: 2.0),
         IngredientModel(ingredientName: "1 red chilli, finely chopped", ingredientImage: "https://itsnotcomplicatedrecipes.com/wp-content/uploads/2021/01/Preserved-Chillis-in-Oil-2.jpg", ingredientQuantity: 30.0),
         IngredientModel(ingredientName: "1½ tsp ground turmeric", ingredientImage: "https://static.toiimg.com/photo/msid-66636383/66636383.jpg", ingredientQuantity: 3),
         IngredientModel(ingredientName: "2 sweet potatoes (about 400g/14oz), cut into even chunks", ingredientImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Ipomoea_batatas_006.JPG/220px-Ipomoea_batatas_006.JPG", ingredientQuantity: 400),
         IngredientModel(ingredientName: "250g red split lentils", ingredientImage: "https://www.madwholefoods.com.au/wp-content/uploads/2020/04/red-split.jpg", ingredientQuantity: 250),
         IngredientModel(ingredientName: "600ml vegetable stock", ingredientImage: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/veg-stock-8b9fe2c.jpg?quality=90&resize=440,400", ingredientQuantity: 600),
         IngredientModel(ingredientName: "80g bag of spinach", ingredientImage: "https://cdn.britannica.com/30/82530-050-79911DD4/Spinach-leaves-vitamins-source-person.jpg?w=400&h=300&c=crop", ingredientQuantity: 80),
         IngredientModel(ingredientName: "4 spring onions, sliced on the diagonal, to serve", ingredientImage: "https://izzycooking.com/wp-content/uploads/2021/11/How-to-Cut-Green-Onions-thumbnail.jpg", ingredientQuantity: 60),
         IngredientModel(ingredientName: "½ small pack of Thai basil, leaves torn, to serve", ingredientImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCun1TLMXCxWtlQgga0wF7YUjnpA0Vu_Wg7A&usqp=CAU", ingredientQuantity: 30),
         IngredientModel(ingredientName: "1 garlic clove, crushed", ingredientImage: "https://www.mashed.com/img/gallery/what-is-a-garlic-clove-really-and-how-do-you-use-it/intro-1628012061.webp", ingredientQuantity: 20)
         
        ],
        // Ingredient for Simple fish stew.
        [IngredientModel(ingredientName: "1 tbsp olive oil", ingredientImage: "https://cdn.shopify.com/s/files/1/0608/2868/0446/products/FreeGreatPicture.com_7112_olive_oil__28975.1383459936.1280.1280_45d067f1-2f03-485e-89b4-b7d952af7986_1024x1024.jpg?v=1636071841v", ingredientQuantity: 15.0),
         IngredientModel(ingredientName: "1 tsp fennel seeds", ingredientImage: "https://shop.myharvestfarms.com/wp-content/uploads/2021/09/Sombu-Fennel-Seeds.png", ingredientQuantity: 5.0),
         IngredientModel(ingredientName: "2 carrots, diced", ingredientImage: "https://cdn.shopify.com/s/files/1/0017/9234/4153/products/carrots-2_1024x1024@2x.jpg?v=1594208113", ingredientQuantity: 120.0),
         IngredientModel(ingredientName: "2 celery sticks, diced", ingredientImage: "https://s3.amazonaws.com/com.niches.production/story_images/new_images/000/004/697/width_1200/how-much-is-in-a-celery-stalk-2.jpg?1631649750", ingredientQuantity: 50.0),
         IngredientModel(ingredientName: "2 garlic cloves, finely chopped", ingredientImage: "https://www.mashed.com/img/gallery/what-is-a-garlic-clove-really-and-how-do-you-use-it/intro-1628012061.webp", ingredientQuantity: 10.0),
         IngredientModel(ingredientName: "2 leeks, thinly sliced", ingredientImage: "", ingredientQuantity: 19.0),
         IngredientModel(ingredientName: "400g can chopped tomatoes", ingredientImage: "", ingredientQuantity: 400.0),
         IngredientModel(ingredientName: "500ml hot fish stock, heated to a simmer", ingredientImage: "", ingredientQuantity: 500.0),
         IngredientModel(ingredientName: "2 skinless pollock fillets (about 200g), thawed if frozen, and cut into chunks", ingredientImage: "", ingredientQuantity: 200.0),
         IngredientModel(ingredientName: "85g raw shelled king prawns", ingredientImage: "https://www.great-alaska-seafood.com/products600/16-king-prawns98372047-600.jpg", ingredientQuantity: 85)
         
        ]
        
    ]
    
    struct PreparationProcedure
    {
        static let steps: [[PreparationDescription]] =
        [
            // Breakfast Section
            // Preparation description for Chocolate Oats.
            [PreparationDescription(description: ["Combine all ingredients in a small pot. Mix until fullly combined three times.",
                                                  "Transfer the pot to a stove.Cook over medium heat, stirring frequently, until thick and creamy. This should take about 6-8 minutes. Stir the oatmeal often to prevent it from sticking to the bottom of the pot.",
                                                  "Transfer oatmeal to bowl(s). Add your favorite toppings. Enjoy!"])
            ],
            // Preparation description for Banana Shake.
            [PreparationDescription(description: ["Peel the bananas and chop them.",
                                                  "Transfer the chopped bananas, vanilla and coconut milk into the blender.",
                                                  "Add raw sugar or your preferred choice of sweetener. You can choose to omit the sweetener.","Blend everything until smooth and creamy. If you find the banana shake to be too thick for your liking, add a few splashes of water and blend again.","Pour the milkshake in glasses and serve right away."])
            ],
            // Preparation description for Bread & Jam.
            [PreparationDescription(description: ["Take a bread slice, spread butter generously over it, then spread jam over it. Sandwich it together.",
                                                  "Cut the edges, then cut into slices or strips.",
                                                  "You can cut and serve as such OR toast it. For this, apply butter on a hot tawa","Toast the bread butter jam both the sides and serve hot !"])
            ],
            // Preparation description for French omelette.
            [PreparationDescription(description: ["Whisk eggs, water, and salt together in a mixing bowl. Whisk until mixture is very liquid and whites are completely blended in, 1 or 2 minutes.",
                                                  "Heat 1 1/2 tablespoons butter in a 9- or 10-inch nonstick skillet over medium-high heat. As soon as butter melts and before it starts to sizzle, pour in whisked eggs. Stir in a circular pattern with a heat-proof spatula, lifting and scrambling eggs, shaking the pan to keep leveling out the mixture, and scraping down the sides. Continue stirring until shaking the pan no longer levels the eggs.",
                                                  "Reduce heat to low. Using the spatula, smooth the surface to move runny eggs to less runny spots, working toward an even thickness. As soon as the surface is wet but not runny, remove from heat.","Starting at the handle side of the pan, use the spatula to begin rolling omelette into a cylinder shape, about 3 rolls until omelette is about 2 inches from opposite side of the pan. Use the spatula to fold the last flap of egg over the top of the cylinder leaving the seam-side up. Add remaining 1/2 tablespoon butter to the pan. Gently push the butter as it melts under the omelette.","Slide omelette to edge of the pan. Flip onto a plate with the seam-side down. Even out the shape, if necessary. You can tuck in the ends, if you like. Brush surface with a bit more butter. Dust with cayenne pepper."])
            ],
            // Lunch Section
            // Preparation description for Rice & Chicken.
            [PreparationDescription(description: ["Toss the chicken breast with garlic powder, salt, and pepper. Heat olive oil in a 10-inch skillet over medium heat. Add chicken breast and cook until browned, stirring often, about 3 minutes. Add garlic to skillet and cook for 30 seconds more.",
                                                  "Stir in rice and chicken broth. Bring to a boil, reduce to a simmer, and cover. Cook for 20 minutes, stirring occasionally.",
                                                  "Remove pan from heat and place baby spinach on top of the rice. Cover and let sit for 5 minutes.","Remove lid and stir well. Stir in cream and serve."])
            ],
           
            // Preparation description for Low Fat Pasta.
            [PreparationDescription(description: ["Cook the pasta in a large saucepan of boiling water following packet directions or until al dente, adding the peas for the last 2 minutes of cooking. Reserve 125ml (1/2 cup) of the cooking liquid.","Meanwhile, heat the oil in a non-stick frying pan over medium-high heat. Add the garlic and half the shallot and cook, stirring, for 2 minutes or until aromatic. Add the wine and simmer for 1-2 minutes or until reduced. Tear half the basil leaves.","Combine the cream cheese and reserved pasta water in a bowl. Whisk until smooth and combined. Season well with pepper. Add to the frying pan and immediately remove from the heat.","Drain the pasta mixture. Return to the pan. Add the cream cheese mixture, ham and torn basil. Use tongs to toss well to combine. Sprinkle with the remaining shallot and basil."])
            ],
            // Preparation description for chicken shawarma.
            [PreparationDescription(description: ["Combine the marinade ingredients in a large ziplock bag. Add the chicken, seal, the massage from the outside with your hands to make sure each piece is coated. Marinate 24 hours (minimum 3 hours).","Combine the Yogurt Sauce ingredients in a bowl and mix. Cover and put in the fridge until required (it will last for 3 days in the fridge).","Heat a large non-stick skillet with 1 tablespoon over medium high heat, or lightly brush a BBQ hotplate/grills with oil and heat to medium high. (See notes for baking)","Place chicken in the skillet or on the grill and cook the first side for 4 to 5 minutes until nicely charred. Turn and cook the other side for 3 to 4 minutes (the 2nd side takes less time).","Remove chicken from the grill and cover loosely with foil. Set aside to rest for 5 minutes.","Slice chicken and pile onto platter alongside flatbreads, Salad and the Yoghurt Sauce (or dairy free Tahini sauce from this recipe).","To make a wrap, get a piece of flatbread and smear with Yoghurt Sauce. Top with a bit of lettuce and tomato and Chicken Shawarma. Roll up and enjoy!"])
            ],
            // Dinner Section
            // Preparation description for Prawn & harissa spaghetti.
            [PreparationDescription(description: ["Bring a pan of lightly salted water to the boil. Add the broccoli and boil for 1 min 30 secs, or until tender. Drain and set aside. Cook the pasta following pack instructions, then drain, reserving a ladleful of cooking water.","Heat the oil in a large frying pan, add the garlic clove and fry over a low heat for 2 mins. Remove with a slotted spoon and discard, leaving the flavoured oil.","Add the tomatoes to the pan and fry over a medium heat for 5 mins, or until beginning to soften and turn juicy. Stir through the prawns and cook for 2 mins, or until turning pink. Add the harissa and lemon zest, stirring to coat.","Toss the cooked spaghetti and pasta water through the prawns and harissa. Stir through the broccoli, season to taste and serve."])
            ],
            // Preparation description for Spinach, sweet potato & lentil dhal.
            [PreparationDescription(description: ["Heat 1 tbsp sesame oil in a wide-based pan with a tight-fitting lid.","Add 1 finely chopped red onion and cook over a low heat for 10 mins, stirring occasionally, until softened.","Add 1 crushed garlic clove, a finely chopped thumb-sized piece of ginger and 1 finely chopped red chilli, cook for 1 min, then add 1½ tsp ground turmeric and 1½ tsp ground cumin and cook for 1 min more.","urn up the heat to medium, add 2 sweet potatoes, cut into even chunks, and stir everything together so the potato is coated in the spice mixture.","Tip in 250g red split lentils, 600ml vegetable stock and some seasoning.","Bring the liquid to the boil, then reduce the heat, cover and cook for 20 mins until the lentils are tender and the potato is just holding its shape.","Taste and adjust the seasoning, then gently stir in the 80g spinach. Once wilted, top with the 4 diagonally sliced spring onions and ½ small pack torn basil leaves to serve."])
            ],
            // Preparation description for Simple fish stew.
            [PreparationDescription(description: ["","","",""])
            ]
        ]
    }
    
}
