//
//  cityHallViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/07/02.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class cityHallViewController: UIViewController {
    
    @IBOutlet weak var cityHallImg: UIImageView!
    @IBOutlet weak var cityHallTxt: UITextView!
    @IBOutlet weak var cityHallLbl: UILabel!
    @IBOutlet weak var cityHallStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "東大和市役所"
        
        cityHallTxt.text = "東大和市の市役所\n正面口前の会話のシーンで登場"
        cityHallLbl.text = "主な登場ストーリー"
        cityHallStory.text = "・奥村映誕生日限定ストーリー"
    }
    

}
