//
//  ViewController.swift
//  save_dices_jru
//
//  Created by jru on 2022/10/3.
//

/*
 畫面上有 2 個骰子，按 button
 隨機骰子點數。把骰子點數存起來，下次重新啟動 App 時，會看到上次的骰子點數
 ps: 儲存 array
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView: UIImageView!

    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        //讀取
        let content = UserDefaults.standard.integer(forKey: "diceNumber")
        numberLabel.text = String(content)
        
        diceImageView.image = UIImage(systemName: "die.face.\(content).fill")
    
    }
    
   var number = Int.random(in: 1...6)
    
    @IBAction func play(_ sender: UIButton) {
        
         number = Int.random(in: 1...6)
       
        diceImageView.image = UIImage(systemName: "die.face.\(number).fill")
        numberLabel.text = String(number)
        
//        UserDefaults.standard.set(number, forKey: "diceNumber")
    }
    
    @IBAction func save(_ sender: UIButton) {
        //寫入
//        UserDefaults.standard.set(number, forKey: "diceNumber")
    }
    
}

