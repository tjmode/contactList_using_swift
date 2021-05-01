//
//  ViewController.swift
//  contactList
//
//  Created by guest1 on 30/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addView: UIView? {
        didSet {
            
        }
    }
    @IBOutlet weak var contactListTableView: UITableView? {
        didSet {
            contactListTableView?.register(UINib(nibName: "ContactListTableViewCell", bundle: nil), forCellReuseIdentifier: "ContactListTableViewCell")
            contactListTableView?.delegate = self
            contactListTableView?.dataSource = self
        }
    }
    @IBOutlet weak var addButton: UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonAction(_ sender: Any) {
        
    }
}

extension UIViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactListTableViewCell", for: indexPath) as? ContactListTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}
