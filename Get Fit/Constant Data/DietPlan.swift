//
//  DietPlan.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 13/10/22.
//

import UIKit

struct DietPlan
{
    static let foodCategoryTitle: [String] = ["BreakFast","Brunch","Lunch","Drinks","Supper","Dinner"]
    
    struct Breakfast
    {
        static let cardImage: [UIImage] = [UIImage(named: "Chocolate Oatmeal")!,UIImage(named: "Eggs")!,UIImage(named: "Omelette")!]
        
        static let cardImageURL: [String] = ["https://edamam-product-images.s3.amazonaws.com/web-img/e42/e42f9119813e890af34c259785ae1cfb.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEA8aCXVzLWVhc3QtMSJHMEUCIA%2F7VxeLO6P9%2B6rre7oVao9sAw%2BM1tpjteSAxC4U%2BeRTAiEAynwLaIke4dkZN60RGrFaqesIA429Fo0xwqpHwZrUknoqzAQIWBAAGgwxODcwMTcxNTA5ODYiDD1b%2FJv8cndnxVCUcyqpBOIQdC2O4wZ003f1qWT1WMkAyMBYoyiNeeUZkw9LT9gB2oNs3y%2BUGFdcDctxg8o0l4bHULiH7537e0vzfL6nKBjz1oExWacG4MajDCgMh4G7gOQP4Cb%2BjuVu7au6RsRKpRjYWDZ96rZM1%2F95Jx9raQEfpsAFUS2DTgJIHTpD%2BRYcvUp7vvl5ORB%2Fpe%2BGB9MXp%2BpR1RsYE5FdQT75Ltyu86dC0gJ8JtPpoE4p0SG49C2O8mXI5J3vB9wYAjqRePxbLjYe1Pub2hAXLMSaSrcnd6GF%2F5Z4hL4SGAUUw1rvGKmYdBmIjDzVzNEN4Ss161hgO3lYHYYRPoW6futoUuJYuieGlWhfGVsutYkTCvDEWRa5%2FSVG6JxS6Yal%2F4ji%2BtYgBtQmqWcEDz9RNw6Cdu8HnNoKvPg9g0DdiwCAZ0B7juFBw7aShEt9d9apA9Iw1wvo%2Fo%2FPs%2FFIEjiuZlEoZGXzKziRZ5oBUuWo39VGdqMS8r5gqu6kVGqXDqPVmgX4iar4l5Cf%2FB53jHm8tCOC2cv2AzsHRFxDtI%2Bd1S5Ixb3dKrPQ%2FKg5pu9hGf2nvdEHeOAMSDEA1sPYhSzoYA3ohTnyLpf%2B%2B6DijNjjM8upz%2B7YRGzQpZpobzUkx09MbDruPiuJV8xkNWeQLDXkwTMdk4YtUP7MBvkIoFTeoYagrObUe0jnO0TLldYPms%2FflxKVF4lzXRo2lS5f6%2FIqPe0oRldE%2Ffiy8C5UwXQPIvwwqei0nQY6qQH%2BVsVL49zhJgTMfoEmWV0AXqUo35y52QQsSPcVo6JKCHuFzJezplltGbOR52BR7G5KB8MnQ3qigBf2C6guMVlLOG%2Fz1WBENJFbRwtO7oPC8FLGmpaYEZsMdsJGubQXAnKt8LXQev04pKFhGv8xFTeLWQo54W4333cFhcelhrTJYi0RWyYaZ8%2BPutIbGCvaOGb8v6ebXZhbUSbBM9Q4rfKIBEgpAmFJG41J&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221229T070304Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFHT2BSHU7%2F20221229%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=5c170435c2f848b8e3271abdb3f8bde782c7ea7106b90030cc04a2144749064b"]
        
        static let foodName: [String] = ["Chocolate Oats","Boiled Eggs","Omelette","Omelette","Omelette","Omelette"]
        static let foodQuantity: [String] = ["1 cup(120 grams)","Per Serving(3 nos)","Per Serving(122 grams)","1 cup(120 grams)","Per Serving(3 nos)","Per Serving(122 grams)"]
        static let foodCalories: [String] = ["460 Kcal","225 Kcal","225 Kcal","460 Kcal","225 Kcal","225 Kcal"]
    }
    
    struct Lunch
    {
        static let cardImage: [UIImage] = [UIImage(named: "Curd Rice")!,UIImage(named: "Mustard Chicken")!,UIImage(named: "Tandoori Chicken")!]
        static let foodName: [String] = ["Curd Rice","Mustard Chicken","Chicken Tandoori"]
        static let foodQuantity: [String] = ["1 cup(120 grams)","Per Serving(200 grams)","Per Serving(220 grams)"]
        static let foodCalories: [String] = ["130 Kcal","220 Kcal","280 Kcal"]
    }
    
    struct Dinner
    {
        static let cardImage: [UIImage] = [UIImage(named: "Fish Curry")!,UIImage(named: "Biryani")!,UIImage(named: "Chicken Curry")!]
        static let foodName: [String] = ["Fish Curry","Veg Biryani","Chicken Curry"]
        static let foodQuantity: [String] = ["1 cup(120 grams)","Per Serving(200 grams)","Per Serving(220 grams)"]
        static let foodCalories: [String] = ["300 Kcal","220 Kcal","290 Kcal"]
    }
    
    struct Ingredients
    {
        static let foodName: [String] = ["Oats","Cocoa Powder","Honey","Milk","Flax Seed"]
        
        static let foodImage: [UIImage] = [UIImage(named: "Oats")!,UIImage(named: "Cocoa Powder")!,UIImage(named: "Honey")!,UIImage(named: "Milk")!,UIImage(named: "Flaxseeds")!]
        
        static let foodQuantity: [String] = ["1 cup","2-3 tbsp","5-6 tbsp","1 cup","2-3 tbsp"]
    }
    
    struct PreparationProcedure
    {
        static let steps: [String] =
        [
           "Combine all ingredients in a small pot.",
           "Transfer the pot to a stove. Cook over medium heat, stirring frequently, until thick and creamy. This should take about 6-8 minutes. Stir the oatmeal often to prevent it from sticking to the bottom of the pot.",
           "Transfer oatmeal to bowl(s). Add your favorite toppings. Enjoy!",
           "First set the numberOfLines property to 0 so that the device understands you don't care how many lines it needs. Then specify your favorite BreakMode Then the width needs to be set before sizeToFit() method. Then the label knows it must fit in the specified width"
        
        ]
    }
    
}
