//
//  AddEventModalViewController.swift
//  Pulse
//
//  Created by Scott Eremia-Roden on 4/17/16.
//  Copyright © 2016 Internet, California. All rights reserved.
//

import UIKit

class AddEventModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
    }
    
    @IBAction func cancelAddEvent(_ sender: AnyObject) {
    }
    @IBAction func cancelAddEventToViewController(_ segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func saveNewEventToViewController(_ segue: UIStoryboardSegue) {
        
    }
    
}
