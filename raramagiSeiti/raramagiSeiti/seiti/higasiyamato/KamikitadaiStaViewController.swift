//
//  kamikitadaiStaViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/07/01.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class KamikitadaiStaViewController: UIViewController {
    
    @IBOutlet weak var kamikitadaiStaImg: UIImageView!
    @IBOutlet weak var kamikitadaiStaTxt: UITextView!
    @IBOutlet weak var kamikitadaiStaLbl: UILabel!
    @IBOutlet weak var kamikitadaiStaStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "上北台駅"
        
        kamikitadaiStaTxt.text = "多摩モノレールの起点駅\n駅の前での会話のシーンで登場"
        kamikitadaiStaLbl.text = "主な登場ストーリー"
        kamikitadaiStaStory.text = "・11幕『ハッピーアンバースデイソング』\n・イベントストーリー多数"
    }
    

}
