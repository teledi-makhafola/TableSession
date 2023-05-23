//
//  ViewController.swift
//  TableSession
//
//  Created by DA MAC M1 120 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customTableView.dataSource = self
    }
}

// MARK: - TableView Methods
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = customTableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell else {return CustomCell()}
        
        cell.firstNameLabel.text = "Lethabo"
        cell.lastNameLabel.text = "Makhafola"
        cell.emailLabel.text = "LMakhs@gmail.com"
        
        cell.imageLabel.image = UIImage(systemName: "person.circle")
        
        return cell
    }
}

