//
//  DetailViewController.swift
//  FoodExhibition
//
//  Created by DavidKim on 5/25/16.
//  Copyright © 2016 Taiwen Jin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var restaurantImageView: UIImageView!
    var restaurant: Restaurant!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.restaurantImageView.image = UIImage(named: restaurant.image)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
