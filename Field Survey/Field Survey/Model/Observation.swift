//
//  Animal.swift
//  Field Survey
//
//  Created by t s on 4/13/18.
//  Copyright © 2018 Shuper. All rights reserved.
//

import UIKit

enum Observation: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
