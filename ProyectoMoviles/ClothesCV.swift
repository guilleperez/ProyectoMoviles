//
//  ClothesCV.swift
//  ProyectoMoviles
//
//  Created by Ivan Rangel Varela on 30/04/18.
//  Copyright © 2018 Guillermo Pérez Trueba. All rights reserved.
//

import UIKit

class ClothesCV: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var tipo: String? = nil
    
    var imagesTop = ["shirt2.jpeg", "shirt3.jpeg", "shirt4.jpg", "shirt5.jpeg"]
    
    var imagesBottom = ["jeans1.jpeg","jeans2.jpg", "jeans3.jpeg", "jeans4.jpg" ]
    
    var imagesCoats = ["chac1.jpeg","chac2.jpg", "chac3.jpg", "chac4.jpg" ]
    
    var imagesShoes = ["shoe1.jpeg","shoe2.jpeg", "shoe3.jpg", "shoe4.jpg" ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesTop.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! ViewCell
        
        
        var image: UIImage? = nil
        if tipo == "Top" {
            image = UIImage(named: imagesTop[indexPath.row])
        }else if tipo == "Bottom" {
            image = UIImage(named: imagesBottom[indexPath.row])
        }else if tipo == "Coats" {
            image = UIImage(named: imagesCoats[indexPath.row])
        }else{
            image = UIImage(named: imagesShoes[indexPath.row])
        }
        
        cell.image.image = image
        
        return cell
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let flow = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let itemSpacing: CGFloat = 3
        let itemsInOneLine: CGFloat = 3
        flow.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        let width = UIScreen.main.bounds.size.width - itemSpacing * CGFloat(itemsInOneLine - 1)
        flow.itemSize = CGSize(width: floor(width/itemsInOneLine), height: width/itemsInOneLine)
        flow.minimumInteritemSpacing = 3
        flow.minimumLineSpacing = 3
        
        self.navigationItem.title = tipo
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
