//
//  ViewController.swift
//  iExercise12-CustomView
//
//  Created by Minh Tan Vu on 23/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView1: UITableView!
    
    @IBOutlet weak var tableView2: UITableView!
    
    var data1: [CellModel] = [
        CellModel(imageName: "person.fill", title: "Personal Data"),
        CellModel(imageName: "gearshape.fill", title: "Settings"),
        CellModel(imageName: "doc.text.fill", title: "E-Statement"),
        CellModel(imageName: "heart.fill", title: "Refferal Code"),
    ]
    
    var data2: [CellModel] = [
        CellModel(imageName: "ellipsis.circle.fill", title: "FAQs"),
        CellModel(imageName: "doc.append.fill", title: "Our Handbook"),
        CellModel(imageName: "person.3.fill", title: "Community")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView1.dataSource = self
        tableView2.dataSource = self
        tableView1.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        tableView2.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableView1 {
            return data1.count
        } else if tableView == tableView2 {
            return data2.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tableView1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! TableViewCell
            cell.label.text = data1[indexPath.row].title
//            cell.customImage.image = UIImage(systemName: data1[indexPath.row].imageName)
            cell.accessoryType = .disclosureIndicator
            return cell
            
        } else if tableView == tableView2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! TableViewCell
            cell.label.text = data2[indexPath.row].title
//            cell.customImage.image = UIImage(systemName: data2[indexPath.row].imageName)
            cell.accessoryType = .disclosureIndicator
            return cell
        }
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    
}
