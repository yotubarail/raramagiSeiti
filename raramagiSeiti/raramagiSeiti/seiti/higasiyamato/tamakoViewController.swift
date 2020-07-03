//
//  tamakoViewController.swift
//  raramagiSeiti
//
//  Created by 滝浪翔太 on 2020/07/01.
//  Copyright © 2020 滝浪翔太. All rights reserved.
//

import UIKit

class tamakoViewController: UIViewController {
    
    @IBOutlet weak var tamakoImg: UIImageView!
    @IBOutlet weak var tamakoTxt: UITextView!
    @IBOutlet weak var tamakoLbl: UILabel!
    @IBOutlet weak var tamakoStory: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "多摩湖"
        
        tamakoTxt.text = "1927年完成の人造湖\n『ららマジ』のシンボルと言っても良い場所"
        tamakoLbl.text = "主な登場ストーリー"
        tamakoStory.text = "・1幕『いばら姫』\n・イベントストーリー多数"
    }
    

}
