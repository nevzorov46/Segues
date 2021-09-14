//
//  GreenViewController.swift
//  Segues
//
//  Created by Иван Карамазов on 14.09.2021.
//

import UIKit

class GreenViewController: UIViewController {

    var dataFromVC: String? // nil
    @IBOutlet weak var emoji: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let emojiFromVC = dataFromVC {
            emoji.text = emojiFromVC
        }
        view.backgroundColor = .green
    }
    
}

struct SomeStruct {
    
    var data: String
}
