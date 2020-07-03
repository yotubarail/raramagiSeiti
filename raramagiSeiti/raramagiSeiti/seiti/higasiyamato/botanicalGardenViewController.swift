//
//  botanicaiGardenViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/06/30.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class botanicalGardenViewController: UIViewController {
    
    @IBOutlet weak var botanicalGardenImg: UIImageView!
    @IBOutlet weak var botanicalGardenTxt: UITextView!
    @IBOutlet weak var botanicalGardenLbl: UILabel!
    @IBOutlet weak var botanicalGardenStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "東京都薬用植物園"
        
        botanicalGardenTxt.text = "薬用植物の収集や栽培を行っている\n神代結菜の救いに関連する場所で、ここで調律は終わるはずだったが..."
        botanicalGardenLbl.text = "主な登場ストーリー"
        botanicalGardenStory.text = "・5幕『ある晴れた日に』"
    }
    


}
