//
//  FoodTableViewController.swift
//  FoodExhibition
//
//  Created by DavidKim on 5/23/16.
//  Copyright © 2016 Taiwen Jin. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var restaurants = ["HunanKing", "ChineseKitchen", "ChinaInn","HappyWok","MekongCafe","AsiaCafe","Charlis"]
    var restaurantsImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
    var restaurantsLocations = ["Umall", "Mapple", "Main Street", "Main Street", "Blacksbrug Square", "Christianburg", "Christianburg", "悉尼", "悉尼", "悉尼", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "伦敦", "伦敦", "伦敦", "伦敦"]
    
    var restaurantsTypes = ["中餐 & 自助","中餐 & 外卖", "中餐 & 外卖", "中式快餐","越南菜 & 泰国菜", "中餐 & 美式中餐", "上海菜", "巧克力", "咖啡", "美式 & 海鲜", "美式", "美式","早餐 & 早午餐", "法式 & 茶", "咖啡 & 茶", "拉丁美式", "西班牙式", "西班牙式", "西班牙式", "英式", "泰式"]
    var restaurantsCheckedMark = [Bool](count:21,repeatedValue:false)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurants.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomTableViewCell
        //设置图片的框架
        cell.restaurantName.text = restaurants[indexPath.row]
        cell.restaurantImage.image = UIImage(named: restaurantsImages[indexPath.row])
        cell.restaurantImage.layer.cornerRadius = cell.restaurantImage.frame.size.width / 6
        //如果子视图的大小,大于父视图,则裁剪
        cell.restaurantImage.clipsToBounds = true
        cell.restaurantLoccation.text = restaurantsLocations[indexPath.row]
        cell.restaurantType.text = restaurantsTypes[indexPath.row]
        if restaurantsCheckedMark[indexPath.row] == true {
            cell.accessoryType = .Checkmark
        }
        else {
            cell.accessoryType = .None
        }
        return cell
    }
    /*
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //创建响应菜单
        //actionsheet是从底部弹出的
        //alert是显示在中央的
        let alert = UIAlertController(title: "Sir, you choose me!", message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        //一个闭包结构,相当于写一个handler
        let responseAction = { (action: UIAlertAction) -> Void in
            let responseAlert = UIAlertController(title: "Sorry", message: "The phone number cannot access", preferredStyle: UIAlertControllerStyle.Alert)
            let responseAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            responseAlert.addAction(responseAction)
            self.presentViewController(responseAlert, animated: true, completion: nil)
        }
        //响应动作
        let dialAction = UIAlertAction(title: "Call Restaurant 540-808-85\(indexPath.row)", style: UIAlertActionStyle.Default, handler: responseAction)
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        let checkMark = UIAlertAction(title: "Mark", style: UIAlertActionStyle.Default, handler: { (_) -> Void in
            //单元格选中处理后的显示效果,打钩
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            cell!.accessoryType = UITableViewCellAccessoryType.Checkmark
            self.restaurantsCheckedMark[indexPath.row] = true
        })
        //把响应动作加入响应菜单中
        alert.addAction(dialAction)
        alert.addAction(checkMark)
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    */
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    //    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    //        if editingStyle == .Delete {
    //            // Delete the row from the data source
    //            restaurants.removeAtIndex(indexPath.row)
    //            restaurantsImages.removeAtIndex(indexPath.row)
    //            restaurantsLocations.removeAtIndex(indexPath.row)
    //            restaurantsTypes.removeAtIndex(indexPath.row)
    //            restaurantsCheckedMark.removeAtIndex(indexPath.row)
    //            //tableView.reloadData()
    //            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    //        }
    //        else if editingStyle == .Insert {
    //            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    //        }    
    //    }
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let editAction = UITableViewRowAction(style: .Default, title: "share") {(action, indexPath) -> Void in
                let alert = UIAlertController(title: "Share", message: "share to the media you like", preferredStyle: .ActionSheet)
                let shareQQ = UIAlertAction(title: "QQ", style: .Default, handler: nil)
                let shareWeChat = UIAlertAction(title: "Wechat", style: .Default, handler: nil)
                let shareWeibo = UIAlertAction(title: "Weibo", style: .Default, handler: nil)
                alert.addAction(shareQQ)
                alert.addAction(shareWeChat)
                alert.addAction(shareWeibo)
                self.presentViewController(alert, animated: true, completion: nil)
            }
        editAction.backgroundColor = UIColor.orangeColor()
        let deleteAction = UITableViewRowAction(style: .Default, title: "delete"){(action, indexPath) -> Void in
                // Delete the row from the data source
                self.restaurants.removeAtIndex(indexPath.row)
                self.restaurantsImages.removeAtIndex(indexPath.row)
                self.restaurantsLocations.removeAtIndex(indexPath.row)
                self.restaurantsTypes.removeAtIndex(indexPath.row)
                self.restaurantsCheckedMark.removeAtIndex(indexPath.row)
                //tableView.reloadData()
                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            }
        return [editAction, deleteAction]
    }
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
        if segue.identifier == "showDetail" {
            let destViewController = segue.destinationViewController as! DetailViewController
            destViewController.restaurantName = restaurantsImages[(tableView.indexPathForSelectedRow?.row)!]
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}
