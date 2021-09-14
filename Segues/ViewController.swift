//
//  ViewController.swift
//  Segues
//
//  Created by Иван Карамазов on 14.09.2021.
//

import UIKit

class ViewController: UIViewController {

    var someArray = ["😀", "😻"]
    var selectedEmoji: String?
    
    
    // 1
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }

    // 2
    @IBAction func openGreen(_ sender: Any) {
        selectedEmoji = someArray[0]
        performSegue(withIdentifier: "segue01", sender: nil)
    }
    
    // 3
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue01", let greenVC = segue.destination as? GreenViewController {
            greenVC.dataFromVC = selectedEmoji
        }
    }
    
}

