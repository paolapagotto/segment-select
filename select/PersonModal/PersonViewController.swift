//
//  PersonViewController.swift
//  select
//
//  Created by Paola Pagotto on 07/10/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet weak var imagePerson: UIImageView!
    
    @IBOutlet weak var labelNamePerson: UILabel!
    
    @IBAction func actionButtonClose(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func setup (person: Person){
        labelNamePerson.text = person.name
        imagePerson.image = UIImage(named: person.image)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
