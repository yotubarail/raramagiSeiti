//
//  seitiViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/06/19.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class seitiViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var listTableView: UITableView!
    
    let higasiyamatoSeitiList: NSMutableArray = ["東大和市駅", "東京都薬用植物園", "BIGBOX東大和", "旧日立航空機立川工場変電所", "東大和市役所", "上北台駅", "東大和市立郷土博物館", "氷川神社", "多摩湖（村山貯水池）"]
    let otherSeitiList: NSMutableArray = ["下北沢南口商店街"]
    
    var listImg: Array<UIImage> = []

    var section1: Dictionary = [String: NSMutableArray]()
    var section2: Dictionary = [String: NSMutableArray]()
    var sections: Array = [Dictionary<String,NSMutableArray>]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "聖地リスト"

        section1 = ["東大和市": higasiyamatoSeitiList]
        section2 = ["その他": otherSeitiList]
        
        sections.append(section1)
        sections.append(section2)
        
        listTableView.delegate = self
        listTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        for (key) in sections[section].keys
        {
            title = key
        }
        return title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // テーブルビューのセル数の設定する。
        switch section {
        case 0:
            return self.higasiyamatoSeitiList.count
        case 1:
            return self.otherSeitiList.count
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "seitiCell", for:indexPath as IndexPath)
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        for (value) in sections[indexPath.section].values
        {
         cell.textLabel?.text = value[indexPath.row] as? String
         cell.textLabel?.font = UIFont.systemFont(ofSize:20)
        }
        
        cell.imageView?.image = UIImage(named: "seiti\(indexPath.section)\(indexPath.row).png")
        
        return cell
    }
    
    
    // それぞれのcellをタップしたときの処理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section {
            
        // 東大和市聖地
        case 0: switch indexPath.row {
            
            case 0: tableView.deselectRow(at: indexPath, animated: true)
            print("東大和市駅をタップ")
            performSegue(withIdentifier: "higasiyamatosiSta", sender: nil)
            
            case 1: tableView.deselectRow(at: indexPath, animated: true)
            print("東京都薬用植物園をタップ")
            performSegue(withIdentifier: "botanicaiGarden", sender: nil)
            
            case 2: tableView.deselectRow(at: indexPath, animated: true)
            print("BIGBOX東大和をタップ")
            performSegue(withIdentifier: "bigbox", sender: nil)
            
            case 3: tableView.deselectRow(at: indexPath, animated: true)
            print("旧日立航空機立川工場変電所をタップ")
            performSegue(withIdentifier: "electrical", sender: nil)
            
            case 4: tableView.deselectRow(at: indexPath, animated: true)
            print("東大和市役所をタップ")
            performSegue(withIdentifier: "cityHall", sender: nil)
            
            case 5: tableView.deselectRow(at: indexPath, animated: true)
            print("上北台駅をタップ")
            performSegue(withIdentifier: "kamikitadaiSta", sender: nil)
            
            case 6: tableView.deselectRow(at: indexPath, animated: true)
            print("東大和市立郷土博物館をタップ")
            performSegue(withIdentifier: "museum", sender: nil)
            
            case 7: tableView.deselectRow(at: indexPath, animated: true)
            print("氷川神社をタップ")
            performSegue(withIdentifier: "shrine", sender: nil)
            
            case 8: tableView.deselectRow(at: indexPath, animated: true)
            print("多摩湖（村山貯水池）をタップ")
            performSegue(withIdentifier: "tamako", sender: nil)
            
            default: break
            }
            
            
        // その他の地域の聖地
        case 1: switch indexPath.row {
            
            case 0: tableView.deselectRow(at: indexPath, animated: true)
            print("下北沢南口商店街をタップ")
            performSegue(withIdentifier: "shoppingStreet", sender: nil)
            
            case 1: tableView.deselectRow(at: indexPath, animated: true)

            default: break
            }
         
        default: break
        }
    }
    
    // UITableViewの高さを指定
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(55)
    }
    
    // セクションのヘッダーのフォントサイズを変更
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let myLabel = UILabel()
        myLabel.frame = CGRect(x: 20, y: 10, width: 320, height: 20)
        myLabel.font = UIFont.boldSystemFont(ofSize: 18)
        myLabel.text = self.tableView(tableView, titleForHeaderInSection: section)

        let headerView = UIView()
        headerView.addSubview(myLabel)

        return headerView
    }

}
