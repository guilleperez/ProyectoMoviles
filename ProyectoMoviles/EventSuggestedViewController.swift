//
//  EventSuggestedViewController.swift
//  ProyectoMoviles
//
//  Created by Jose Antonio Malo de la Peña on 02/05/18.
//  Copyright © 2018 Guillermo Pérez Trueba. All rights reserved.
//

import UIKit

class EventSuggestedViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return values.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return values[row]
    }
    

    @IBOutlet weak var eventSug: UIPickerView!
    
    let values = ["Sports", "Streetwear", "Casual", "Business Casual", "Business", "Black Tie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        eventSug.delegate = self
        eventSug.dataSource = self
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
