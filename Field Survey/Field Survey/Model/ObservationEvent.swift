//
//  AnimalEvent.swift
//  Field Survey
//
//  Created by t s on 4/13/18.
//  Copyright © 2018 Shuper. All rights reserved.
//

import Foundation

struct ObservationEvent {
    
    let classification: Observation
    let title: String
    let description: String
    let date: Date
    
    init(classification: Observation, title: String, description: String, date: Date){
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classification: String, title: String, description: String, date: Date){
        if let observation = Observation(rawValue: classificaion){
            self.init(classification: observation, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
}
