//
//  ClosetVC.swift
//  ProyectoMoviles
//
//  Created by Ivan Rangel Varela on 30/04/18.
//  Copyright © 2018 Guillermo Pérez Trueba. All rights reserved.
//

import UIKit

class ClosetVC: UIViewController {

    @IBOutlet weak var topButton: UIButton!
    
    @IBOutlet weak var bottomButton: UIButton!
    
    @IBOutlet weak var coatsButton: UIButton!
    
    @IBOutlet weak var shoesButton: UIButton!
    
    
    var type: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ClothesCV
        vc.tipo = type
    }

    @IBAction func checkTypeShoes(_ sender: Any) {
        type = "Shoes"
    }
    
    @IBAction func checkTypeTop(_ sender: Any) {
        type = "Top"
    }
    
    @IBAction func checkTypeBottom(_ sender: Any) {
        type = "Bottom"
    }
    
    @IBAction func checkTypeCoats(_ sender: Any) {
        type = "Coats"
    }
}
