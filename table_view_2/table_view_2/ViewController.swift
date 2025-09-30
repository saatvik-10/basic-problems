//
//  ViewController.swift
//  table_view_2
//
//  Created by SDC-USER on 30/09/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var arr: [String] = [
        "Messi",
        "Suarez",
        "Neymar",
        "KDB",
        "Xavi",
        "Iniesta",
        "Rakitic",
        "Pedri",
        "Frenkie De Jong"
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        //data bounds not required coz this is a storyboard approach and not the programmatic approach
    }


}

