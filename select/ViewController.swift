//
//  ViewController.swift
//  select
//
//  Created by Paola Pagotto on 07/10/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

enum UserSelected {
    static let person = 0
    static let developer = 1
}

class ViewController: UIViewController {
    
    
    var arrayUsers = [User]()
    var arrayPeople = [Person]()
    var arrayDevelopers = [Developer]()
    
    let dev1 = Developer(name: "João", image: "image.png")
    let dev2 = Developer(name: "Filipe", image: "image.png")
    let dev3 = Developer(name: "Maria", image: "image.png")
    
    let person1 = Person(name: "Catarina", image: "image.png")
    let person2 = Person(name: "Daniel", image: "image.png")
    let person3 = Person(name: "Laura", image: "image.png")
    
    @IBOutlet weak var segmentControlUser: UISegmentedControl!
    
    @IBAction func segmentControlUserChanged(_ sender: Any) {
        tableViewUser.reloadData()
    }
    
    
    @IBOutlet weak var tableViewUser: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewUser.delegate = self
        tableViewUser.dataSource = self
        
        arrayDevelopers.append(dev1)
        arrayDevelopers.append(dev2)
        arrayDevelopers.append(dev3)
        
        arrayPeople.append(person1)
        arrayPeople.append(person2)
        arrayPeople.append(person3)
    }
}


extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch segmentControlUser.selectedSegmentIndex {
        case UserSelected.person:
            if let personView = UIStoryboard(name: "Person", bundle: nil).instantiateInitialViewController() as? PersonViewController{
                present(personView, animated: true, completion: nil)
                personView.setup(person: arrayPeople[indexPath.row])
            }
        case UserSelected.developer:
            if let developerView = UIStoryboard(name: "Developer", bundle: nil).instantiateInitialViewController() as? DeveloperViewController{
                navigationController?.pushViewController(developerView, animated: true)
//                developerView.setup(developer: arrayDevelopers[indexPath.row])
                developerView.imageDev = arrayDevelopers[indexPath.row].image
                developerView.title = arrayDevelopers[indexPath.row].name
            }
        default:
            break
        }
    }
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segmentControlUser.selectedSegmentIndex {
        case UserSelected.person:
            return arrayPeople.count
        case UserSelected.developer:
            return arrayDevelopers.count
        default:
            break
        }
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell", for: indexPath) as! UserTableViewCell
        switch segmentControlUser.selectedSegmentIndex {
        case UserSelected.person:
            cell.setup(user: arrayPeople[indexPath.row])
        case UserSelected.developer:
            cell.setup(user: arrayDevelopers[indexPath.row])
        default:
            break
        }
        return cell
    }
}
