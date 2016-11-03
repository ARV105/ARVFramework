//
//  PokemonFramework.swift
//  ARVFramework
//
//  Created by Auriel on 11/2/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit



public class PokemonFramework {
    
    public static func performSegueToFrameworkVC(caller: UIViewController) {
        var bundle:Bundle {
            let podBundle = Bundle(for: PokemonFramework.self)
            
            let bundleURL = podBundle.url(forResource: "ARVFramework", withExtension: "bundle")
            
            return Bundle(url: bundleURL!)!
            
        }

        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let vc = storyboard.instantiateInitialViewController()!
        caller.present(vc, animated: true, completion: nil)
        
           }
}
