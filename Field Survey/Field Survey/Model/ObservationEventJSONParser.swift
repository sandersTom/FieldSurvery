//
//  ClassificationObservationJSONParser.swift
//  Field Survey
//
//  Created by t s on 4/13/18.
//  Copyright © 2018 Shuper. All rights reserved.
//

import Foundation

class ObservationEventJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ date: Date) -> [ObservationEvent] {
        var observationEvents = [ObservationEvent]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
           let root = json as? [String: Any],
           let status = root["status"] as? String,
           status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String] {
                        if let classification = observation["classification"],
                           let title = observation["title"],
                           let description = observation["description"],
                           let dateString = observation["date"],
                           let date = dateFormatter.date(from: dateString) {
                            
                           
                            if let observationEvent = ObservationEvent(classification: classification, title: title, description: description, date: date) {
                                observationEvents.append(ObservationEvent)
                            }
                        }
                    }
                }
            }
            
        }
        
        
        
        
        return observationEvents
    }
    
}
