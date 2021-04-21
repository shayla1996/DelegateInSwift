//
//  ViewController.swift
//  DelegateUsing
//
//  Created by Shaikat on 21/4/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func selectColorBtn(_ sender: Any) {
        if let selectedCOlorVC = storyboard?.instantiateViewController(identifier: "SelectionColorVC") as? SelectionColorVC {
            selectedCOlorVC.selecctionDelegate = self
            self.present(selectedCOlorVC, animated: true, completion: nil)
        }
    }
}

extension ViewController : ColorSelectionDelegate {
    func chooseColor(color: UIColor) {
        view.backgroundColor = color
    }
}

