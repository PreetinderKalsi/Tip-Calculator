//
//  CAGradientLayer+Convience.swift
//  TipPro
//
//  Created by Preetinder Kalsi on 28/05/18.
//  Copyright © 2018 Preetinder Kalsi. All rights reserved.
//

import UIKit
extension CAGradientLayer {
    
    func turquoiseColour() -> CAGradientLayer {
        let topColour = UIColor(red: (15/225.0), green: (118/225.0), blue: (125/255.0), alpha: 1)
        
        let bottomColour = UIColor(red: (84/225.0), green: (187/225.0), blue: (187/225.0), alpha: 1)
        
        let gradientColour: [CGColor] = [topColour.cgColor, bottomColour.cgColor]
        
        let gradientLocation: [Float] = [0.0,1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColour
        gradientLayer.locations = gradientLocation as [NSNumber]
        
        return gradientLayer
        
    }

}
