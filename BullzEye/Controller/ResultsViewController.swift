//
//  ResultsViewController.swift
//  BullzEye
//
//  Created by Bartek on 2/29/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var value: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var yourResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yourResult.text = advice
        view.backgroundColor = color
        
       
    }
    
    @IBAction func tryAgainButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
