//
//  ThirdViewController.swift
//  portfolio
//
//  Created by Khalid Asad on 2018-05-07.
//  Copyright © 2018 khalidtest. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var capstoneDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        capstoneDescription.text = "A special award was offered from McMaster's W. Booth School of Engineering Practice recognizing innovation and entrepreneurial merit \n$500 cash and a free application to any of the WBSEP master's degree programs\n\nKhalid Asad, Danishbir Gill, Bhautik Gandhi, Vishal Kharker."
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
