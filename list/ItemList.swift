//
//  ItemList.swift
//  list
//
//  Created by students on 2021/3/26.
//

import UIKit

class ItemList: UIViewController,UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        list = UserDefaults.standard.object(forKey: "userData") as? [String] ?? []
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        list = UserDefaults.standard.object(forKey: "userData") as? [String] ?? []
        tableView.reloadData();
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated);
        UserDefaults.standard.setValue(list, forKey: "userData");
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "MyCell");
        cell.textLabel?.text = list[indexPath.row];
        return cell;
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            list.remove(at: indexPath.row);
            tableView.reloadData();
        }
    }
    
    // varible
    private var list: [String] = [];
    @IBOutlet weak var tableView: UITableView!
    
}
