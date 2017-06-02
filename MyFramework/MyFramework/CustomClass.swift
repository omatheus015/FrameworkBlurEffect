//
//  CustomClass.swift
//  MyFramework
//
//  Created by Matheus Gomes Queiroz on 02/06/17.
//  Copyright © 2017 BEPiD. All rights reserved.
//

import Foundation

public class CustomClass: NSObject {
    var blurEffectView: UIVisualEffectView = UIVisualEffectView()
    
    public func addBlurEffectIn(image: UIImageView) {
        if image.image != nil {
            if !blurEffectView.isDescendant(of: image) {
                blurEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
                blurEffectView.frame = image.frame
                //blurEffectView.bounds = image.bounds
                //blurEffectView.center = image.center
                blurEffectView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
                
                image.addSubview(blurEffectView)
                print("Effect add!")
                
            } else {
                print("Effect already added!")
            }
        } else {
            print("No image!")
        }
    }
    
    public func removeBlurEffectIn(image: UIImageView) {
        if blurEffectView.isDescendant(of: image) {
            blurEffectView.removeFromSuperview()
        } else {
            print("Image without effect!")
        }
    }
}
