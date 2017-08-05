//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Christie on 8/5/17.
//  Copyright © 2017 Coolwater Design. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

  @IBAction func onNextTapped(_ sender: Any) {
    performSegue(withIdentifier: "skillVCSegue", sender: self)
  }
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
}
