//
//  PlanetTableViewController.swift
//  SolarSystem
//
//  Created by Habib Miranda on 5/17/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetTableViewController: UITableViewController {
    
    let planetFact = ["Closest, but not hottest!", "Hottest planet!", "Life!", "Red Planet", "Biggest Planet!", "Better put a ring on it!", "My what?!", "Greek God of the Sea!", "Hear about Pluto? That's messed up!"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
////    This code gives us the number of sections, which defaults to 1 section. We can tachnically delete this, but I kept it on for show.
    
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 0
//    }
    
    
    
    
//    This code gives us the number of rows in each section. We want to set this equal to the amount of planets in our Planets array.
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PlanetController.planets.count
    }
    
    
    

//    The following code sets the individual properties of the cells that will be displayes. First, the dequeReusableCell... is called so that cells are reused and not so much data is used. Nex, we set the cell equal to the cell we created in storyboard. Qe do this by using the cell identifier "PlanetCell". We then create a constant that we set equal to the array of planets found in PlanetController. This carries the data such as name, diameter, distance from sun, etc. We use this new constant to set up the cell informtion. We access the cell text label and add the desired information. In this case, we added only the name. We created a custom array above to pass into the detailTextLabel that is found in the cell below the textLabel. We then acces the image property of the cell and pass in the images found in the assets folder. This code was tricky, you call for UIImage and find the image by name. It is important that they are spelled correctly everywhere and that they match with the spelling found in the PlanetCpntroller. Get a little more clarification on the images*****. We finally return the cell that we have created.
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = planetFact[indexPath.row]
        cell.imageView?.image = UIImage(named: planet.imageName)

        return cell
    }
    
    
//    In this code we set the width of the header (Technicaly height)
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100.0
    }
    
//    This piece of code allows us to place an image on the header. we first made a constant called imageView and assigned it a value of UIImageView and initialized it. We then accessed the image property of imageView and game it the valiue of a UIImage named Solar-System from our assets folder. We finally returned the new imageView that we created.
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Solar-System")
        return imageView
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50.0
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toDetailSegue" { //How we are getting there.
            let planetDetailVC = segue.destinationViewController as? PlanetDetailViewController //Where we are going
            if let indexPath = tableView.indexPathForSelectedRow {
                let planet = PlanetController.planets[indexPath.row]
                planetDetailVC?.planet = planet
            }
            
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}





