//
//  DeveloperViewController.swift
//  select
//
//  Created by Paola Pagotto on 07/10/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

class DeveloperViewController: UIViewController {
    
    var imageDev: String?
    
    @IBOutlet weak var imageDeveloper: UIImageView!
    
//    func setup (developer: Developer){
//        imageDeveloper.image = UIImage(named: developer.image)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = imageDev{
            imageDeveloper.image = UIImage(named: image)
        }
        // Do any additional setup after loading the view.
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
