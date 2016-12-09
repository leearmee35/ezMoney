//
//  ToJobSearchSegue.swift
//  ezMoney
//
//  Created by Ian Li on 12/7/16.
//  Copyright © 2016 Ian Li. All rights reserved.
//

import UIKit

class ToJobSearchSegue: UIStoryboardSegue {
    
    override func perform() {
        
        //set the ViewControllers for the animation
        
        let sourceView = self.source.view as UIView!
        let destinationView = self.destination.view as UIView!
        
        
        let window = UIApplication.shared.delegate?.window!
        
        window?.insertSubview(destinationView!, aboveSubview: sourceView!)
        

        
        UIView.transition(from: sourceView!, to: destinationView!, duration: 0.68, options: .transitionCurlDown, completion: {
            (value: Bool) in
            self.source.navigationController?.pushViewController(self.destination, animated: false)
        })
    }
}
