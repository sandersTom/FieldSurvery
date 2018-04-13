//
//  ObservationEventDetailViewController.swift
//  Field Survey
//
//  Created by t s on 4/13/18.
//  Copyright © 2018 Shuper. All rights reserved.
//

import UIKit

class ObservationEventDetailViewController: UIViewController {

    var observationEvent: ObservationEvent?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var observationIconImageView: UIImageView!
    
    @IBOutlet weak var classificationLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Observation"
        
        observationIconImageView.image = observationEvent?.classification.image
        classificationLabel.text = observationEvent?.classification.rawValue
        descriptionLabel.text = observationEvent?.description
        
        if let date = observationEvent?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
