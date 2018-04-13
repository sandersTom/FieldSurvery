//
//  ObservationEvenJSONLoader.swift
//  Field Survey
//
//  Created by t s on 4/13/18.
//  Copyright © 2018 Shuper. All rights reserved.
//

import Foundation

class ObservationEventsJSONLoader {
    
    class func load(fileName: String) -> [ObservationEvent] {
        var observations = [ObservationEvent]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
           observations = ObservationEventJSONParser.parse(data)
            }
        }
        
        return observations
    }
    
}
