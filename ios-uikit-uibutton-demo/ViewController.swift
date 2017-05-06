//
//  ViewController.swift
//  ios-uikit-uibutton-demo
//
//  Created by Manami Ichikawa on 5/6/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customButton: UIButton!
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCustomButtom()
        setHighlightedButton()
    }
    
    private func setCustomButtom(){
        
        //ボタンのタイトルの色を設定
        customButton.setTitleColor(UIColor.white, for: .normal)
        
        //ボタンのタイトルを指定
        customButton.setTitle("ボタン", for: .normal)
        customButton.backgroundColor = UIColor.orange
        
        //ボタンタイトルに影を指定
        customButton.setTitleShadowColor(UIColor.gray, for: .normal)
        customButton.titleLabel!.shadowOffset = CGSize(width: 2.0, height: 2.0)
        
        //角丸にする
        customButton.layer.masksToBounds = true
        customButton.layer.cornerRadius = 10.0
    }
    
    private func setHighlightedButton(){
        
        //ボタンを押した時、タイトルとタイトル色を変更
        button.setTitle("何！？", for: UIControlState.highlighted)
        button.setTitleColor(UIColor.red, for: UIControlState.highlighted)
    }

    

}

