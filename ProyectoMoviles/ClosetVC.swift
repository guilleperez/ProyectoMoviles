//
//  ClosetVC.swift
//  ProyectoMoviles
//
//  Created by Ivan Rangel Varela on 30/04/18.
//  Copyright © 2018 Guillermo Pérez Trueba. All rights reserved.
//

import UIKit

class ClosetVC: UIViewController{

    var flag = 0
    @IBAction func menuButton(_ sender: Any) {
        transV.isHidden = false
        UIView .transition(with: sidePanel, duration: 0.2, options: UIViewAnimationOptions.curveEaseIn, animations: {
            var frame = self.sidePanel.frame
            frame.origin.x = 0
            self.sidePanel.frame = frame
        }, completion: nil)
        flag = 1
    }
    
    @IBOutlet weak var sidePanel: UIView!
    @IBOutlet weak var transV: UIView!
    
    @IBOutlet weak var topButton: UIButton!
    
    @IBOutlet weak var bottomButton: UIButton!
    
    @IBOutlet weak var coatsButton: UIButton!
    
    @IBOutlet weak var shoesButton: UIButton!
    
    
    //UITapGestureRecognizer
    
    
    var type: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapper = UITapGestureRecognizer()
        tapper.numberOfTapsRequired = 1
        /*tapper.addTarget(self, action: hideSidePanel(gesture: <#T##UIGestureRecognizer#>))*/
        tapper.addTarget(self, action: #selector(hideSidePanel(gesture:)))
        
        transV.addGestureRecognizer(tapper)
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func hideSidePanel(gesture: UIGestureRecognizer){
        if (gesture.state == UIGestureRecognizerState.ended){
            transV.isHidden = true
            UIView .transition(with: sidePanel, duration: 0.2, options: UIViewAnimationOptions.curveEaseIn, animations: {
                var frame = self.sidePanel.frame
                //let originalSize = self.sidePanel.frame.origin.x
                //print(originalSize)
                let originalSize = -229.0
                frame.origin.x = CGFloat(originalSize)
                self.sidePanel.frame = frame
            }, completion: nil)
            flag = 0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (flag == 0){
            let vc = segue.destination as! ClothesCV
            vc.tipo = type
        }
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
