//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Habib Miranda on 5/17/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!
    @IBOutlet weak var diameterLabel: UILabel!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let planet = planet {
            updatePlanetView(planet)
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updatePlanetView(planet: Planet) {
        title = planet.name
        imageView.image = UIImage(named: planet.imageName)
        distanceLabel?.text = ("\(planet.name) is \(planet.millionKMsFromSun) from the Sun!")
        diameterLabel?.text = ("\(planet.name) is \(planet.diameter) across!")
        dayLengthLabel?.text = ("\(planet.name) has a day that is \(planet.dayLength) Earth days long!")
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
