//
//  SugeridosViewController.swift
//  ProyectoMoviles
//
//  Created by Guillermo Pérez Trueba on 27/04/18.
//  Copyright © 2018 Guillermo Pérez Trueba. All rights reserved.
//

import UIKit

class SugeridosViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource { 

    let colors = 12
    let numberOfSets = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! CeldaCollectionViewCell
        
        switch indexPath.row{
        case 0:
            celda.backgroundColor = UIColor.black
        case 1:
            celda.backgroundColor = UIColor.darkGray
        case 2:
            celda.backgroundColor = UIColor.gray
        case 3:
            celda.backgroundColor = UIColor.white
            celda.layer.borderWidth = 1.0
            celda.layer.borderColor = UIColor.black.cgColor
        case 4:
            celda.backgroundColor = UIColor.yellow
        case 5:
            celda.backgroundColor = UIColor.brown
        case 6:
            celda.backgroundColor = UIColor.orange
        case 7:
            celda.backgroundColor = UIColor.red
        case 8:
            celda.backgroundColor = UIColor.purple
        case 9:
            celda.backgroundColor = UIColor.blue
        case 10:
            celda.backgroundColor = UIColor.cyan
        default:
            celda.backgroundColor = UIColor.green
        }
        

        
        
        /*celda.backgroundColor = UIColor.white
        celda.backgroundColor = UIColor.gray
        celda.backgroundColor = UIColor.green
        celda.backgroundColor = UIColor.green*/
        

        return celda
    }

}
