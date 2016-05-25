//: Playground - noun: a place where people can play

import Cocoa

var restaurants = ["HunanKing", "ChineseKitchen", "ChinaInn","HappyWok","MekongCafe","AsiaCafe","Charlis"]
var restaurantsImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
var restaurantsLocations = ["Umall", "Mapple", "Main Street", "Main Street", "Blacksbrug Square", "Christianburg", "Christianburg", "悉尼", "悉尼", "悉尼", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "伦敦", "伦敦", "伦敦", "伦敦"]

var restaurantsTypes = ["中餐 & 自助","中餐 & 外卖", "中餐 & 外卖", "中式快餐","越南菜 & 泰国菜", "中餐 & 美式中餐", "上海菜", "巧克力", "咖啡", "美式 & 海鲜", "美式", "美式","早餐 & 早午餐", "法式 & 茶", "咖啡 & 茶", "拉丁美式", "西班牙式", "西班牙式", "西班牙式", "英式", "泰式"]
var restaurantsCheckedMark = [Bool](count:21,repeatedValue:false)

for i in 0..<restaurants.count {
    print("Restaurant(name: \"\(restaurants[i])\", type: \"\(restaurantsTypes[i])\", location: \"\(restaurantsLocations[i])\", image: \"\(restaurantsImages[i])\", isVisitd: \(restaurantsCheckedMark[i]))\n")
}