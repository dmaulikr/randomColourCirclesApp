//
//  ViewController.swift
//  Finger Art
//
//  Created by student on 2/9/17.
//  Copyright © 2017 Cody Haslam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var artView: ArtView!
    @IBAction func buttonTouched(_ sender: UIButton) {
        let av = artView as? ArtView
        av?.setNeedsDisplay()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

