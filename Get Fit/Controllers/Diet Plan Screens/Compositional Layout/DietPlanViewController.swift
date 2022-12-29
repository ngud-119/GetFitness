//
//  DietPlanViewController.swift
//  Get Fit
//
//  Created by Sandeep Sahani on 12/10/22.
//

import UIKit

var cardImageURL:[String] = [String]()
var foodName:[String] = [String]()
var foodQuantity:[String] = [String]()
var foodCalorie:[String] = [String]()

// Array for pupulating table view cells
var foodCardViewData = [FoodCardModel]()

// Food categoty
let foodCategoty = "Brunch"

// Task2: Implement Compositional Layout;
class DietPlanViewController: UIViewController
{
    @IBOutlet weak var foodCardCollectionView: UICollectionView!
    
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout
    {
        return UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection? in

            switch sectionNumber
            {

            case 0: return self.firstLayoutSection()

            default:

                return nil
            }
        }
    }

    private func firstLayoutSection() -> NSCollectionLayoutSection
    {

       let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension:
    .fractionalHeight(1))

       let item = NSCollectionLayoutItem(layoutSize: itemSize)
    item.contentInsets.bottom = 15

       let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.45), heightDimension:
    .fractionalWidth(0.55))

       let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
    group.contentInsets = .init(top: 0, leading: 15, bottom: 0, trailing: 2)

       let section = NSCollectionLayoutSection(group: group)

       section.orthogonalScrollingBehavior = .groupPaging

       return section
    }
    
    override func viewDidLoad()
    {
        foodCardCollectionView.delegate = self
        foodCardCollectionView.dataSource = self
        foodCardCollectionView.register(HeaderCollectionReusableCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableCell.identifier )
        // Creating composional Layout
        foodCardCollectionView.collectionViewLayout = createCompositionalLayout()
        
    }
    // Do any additional setup after loading the view.
}


extension DietPlanViewController: UICollectionViewDelegate,UICollectionViewDataSource
{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCardCell", for: indexPath) as! FoodCardCollectionViewCell
        
        
        cell.configureFoodCard(cardImageUrl: "https://edamam-product-images.s3.amazonaws.com/web-img/e42/e42f9119813e890af34c259785ae1cfb.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEA8aCXVzLWVhc3QtMSJHMEUCIA%2F7VxeLO6P9%2B6rre7oVao9sAw%2BM1tpjteSAxC4U%2BeRTAiEAynwLaIke4dkZN60RGrFaqesIA429Fo0xwqpHwZrUknoqzAQIWBAAGgwxODcwMTcxNTA5ODYiDD1b%2FJv8cndnxVCUcyqpBOIQdC2O4wZ003f1qWT1WMkAyMBYoyiNeeUZkw9LT9gB2oNs3y%2BUGFdcDctxg8o0l4bHULiH7537e0vzfL6nKBjz1oExWacG4MajDCgMh4G7gOQP4Cb%2BjuVu7au6RsRKpRjYWDZ96rZM1%2F95Jx9raQEfpsAFUS2DTgJIHTpD%2BRYcvUp7vvl5ORB%2Fpe%2BGB9MXp%2BpR1RsYE5FdQT75Ltyu86dC0gJ8JtPpoE4p0SG49C2O8mXI5J3vB9wYAjqRePxbLjYe1Pub2hAXLMSaSrcnd6GF%2F5Z4hL4SGAUUw1rvGKmYdBmIjDzVzNEN4Ss161hgO3lYHYYRPoW6futoUuJYuieGlWhfGVsutYkTCvDEWRa5%2FSVG6JxS6Yal%2F4ji%2BtYgBtQmqWcEDz9RNw6Cdu8HnNoKvPg9g0DdiwCAZ0B7juFBw7aShEt9d9apA9Iw1wvo%2Fo%2FPs%2FFIEjiuZlEoZGXzKziRZ5oBUuWo39VGdqMS8r5gqu6kVGqXDqPVmgX4iar4l5Cf%2FB53jHm8tCOC2cv2AzsHRFxDtI%2Bd1S5Ixb3dKrPQ%2FKg5pu9hGf2nvdEHeOAMSDEA1sPYhSzoYA3ohTnyLpf%2B%2B6DijNjjM8upz%2B7YRGzQpZpobzUkx09MbDruPiuJV8xkNWeQLDXkwTMdk4YtUP7MBvkIoFTeoYagrObUe0jnO0TLldYPms%2FflxKVF4lzXRo2lS5f6%2FIqPe0oRldE%2Ffiy8C5UwXQPIvwwqei0nQY6qQH%2BVsVL49zhJgTMfoEmWV0AXqUo35y52QQsSPcVo6JKCHuFzJezplltGbOR52BR7G5KB8MnQ3qigBf2C6guMVlLOG%2Fz1WBENJFbRwtO7oPC8FLGmpaYEZsMdsJGubQXAnKt8LXQev04pKFhGv8xFTeLWQo54W4333cFhcelhrTJYi0RWyYaZ8%2BPutIbGCvaOGb8v6ebXZhbUSbBM9Q4rfKIBEgpAmFJG41J&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221229T070304Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFHT2BSHU7%2F20221229%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=5c170435c2f848b8e3271abdb3f8bde782c7ea7106b90030cc04a2144749064b", foodNameLabel: "foodX", foodQuantityLabel: "100", calorieLabel: "100")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
    {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableCell.identifier, for: <#T##IndexPath#>)
        return UICollectionReusableView()
    }

    
    
}


