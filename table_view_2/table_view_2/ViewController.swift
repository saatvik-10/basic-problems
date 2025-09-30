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
    
    struct Assign {
        var ID: Int
        var Name: String
        var Age: Int
        var Major: String
    }
    
    var assign: [Assign] = [
        Assign(ID: 1, Name: "Saatvik", Age: 21, Major: "CSE"),
        Assign(ID: 2, Name: "Pavneesh", Age: 21, Major: "CSE")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assign.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        let data = assign[indexPath.row]
        cell.textLabel?.font = UIFont.monospacedSystemFont(ofSize: 14, weight: .regular)
        cell.textLabel?.text = String (
            format: "%-10d %-10s %-8d %-10s",
            data.ID,
            (data.Name as NSString).utf8String!,
            data.Age,
            (data.Major as NSString).utf8String!
        )
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

