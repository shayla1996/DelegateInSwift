//
//  SelectionColorVC.swift
//  DelegateUsing
//
//  Created by Shaikat on 21/4/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit

protocol ColorSelectionDelegate {
    func chooseColor (color : UIColor)
}

class SelectionColorVC: UIViewController {
     var selecctionDelegate : ColorSelectionDelegate?
    
    @IBAction func selectBlue(_ sender: Any) {
        selecctionDelegate?.chooseColor(color: .blue)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectRed(_ sender: Any) {
        selecctionDelegate?.chooseColor(color: .red)
        self.dismiss(animated: true, completion: nil)
    }
}
