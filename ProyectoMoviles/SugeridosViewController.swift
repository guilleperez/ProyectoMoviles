//
//  SugeridosViewController.swift
//  ProyectoMoviles
//
//  Created by Guillermo Pérez Trueba on 27/04/18.
//  Copyright © 2018 Guillermo Pérez Trueba. All rights reserved.
//

import UIKit

class SugeridosViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource { 

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! CeldaCollectionViewCell
        
        celda.backgroundColor = UIColor.green
        
        celda.lblText.text = "hola"

        return celda
    }

}
