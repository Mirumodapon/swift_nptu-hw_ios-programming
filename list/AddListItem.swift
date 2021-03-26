//
//  AddListItem.swift
//  list
//
//  Created by students on 2021/3/26.
//

import UIKit

class AddListItem: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func button(_ sender: UIButton) {
        var list: [String];
        list = UserDefaults.standard.object(forKey: "userData") as? [String] ?? []
        
        list.append(textField.text!);
        
        UserDefaults.standard.setValue(list, forKey: "userData");
        textField.text = "";
        
    }
}
