//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Habib Miranda on 5/10/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetSize: UILabel!
    @IBOutlet weak var dayLength: UILabel!
    @IBOutlet weak var PlanetDisFromSun: UILabel!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let planet = planet {
            updateWithPlanet(planet)
        }
        
    //^^ This is another extremely common design pattern. When loading a new view controller, check for a model object, and update the view with the values from that model object.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func updateWithPlanet(planet: Planet) {
        self.navigationItem.title = planet.name
        planetImage.image = UIImage(named: planet.imageName)
        planetSize.text = "Diameter: \(planet.diameter)"
        dayLength.text = "Day Length: \(planet.dayLength) hours"
        PlanetDisFromSun.text = "Distance from Sun: \(planet.millionKMsFromSun) 10^6 km"
    }
    
    
    // ^^This is an extremely common design pattern. Commit it to memory. If you have a detail view or table view cell template that displays data, use an 'updateWith' method that accepts the model data and updates the view elements with the correct data

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
