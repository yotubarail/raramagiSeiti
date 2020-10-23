//
//  higasiyamatosiStaViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/06/26.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class HigasiyamatosiStaViewController: UIViewController {
    
    @IBOutlet weak var higasiyamatosiStaImg: UIImageView!
    @IBOutlet weak var higasiyamatosiStaTxt: UITextView!
    @IBOutlet weak var higasiyamatosiStaLbl: UILabel!
    @IBOutlet weak var higasiyamatosiStaStory: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "東大和市駅"
        
        higasiyamatosiStaTxt.text = "西武拝島線の駅\n作中では東奏駅として登場"
        
        higasiyamatosiStaLbl.text = "主な登場ストーリー"
        
        higasiyamatosiStaStory.text = "・12幕『カノホナピリカイ』\n・イベントストーリー多数"
    }
    
    
}
