//
//  ArtView.swift
//  Finger Art
//
//  Created by Cody Haslam on 2/9/17.
//  Copyright © 2017 Cody Haslam. All rights reserved.
//

import UIKit

class ArtView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        for _ in 1...100{
            drawRandomCircle(rect)
        }
    }
    
    func drawRandomCircle(_ rect: CGRect) {
        let cx = randomFloat() * rect.width
        let cy = randomFloat() * rect.height
        let r = (randomFloat() * 100) + 50;
        
        let h = randomFloat()
        let s = randomFloat()
        let v = 0.5 + 0.5 * randomFloat()
        
        let path = UIBezierPath(ovalIn: CGRect(x: cx-r, y: cy-r, width: r*2, height: r*2))
        UIColor(hue: h, saturation: s, brightness: v, alpha: 0.5).set()
        path.fill()
    }
    
    func randomFloat() -> CGFloat {
        return CGFloat(arc4random() % 1000) / 1000.0
    }
 

}
