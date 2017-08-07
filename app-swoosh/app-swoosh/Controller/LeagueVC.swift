//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Christie on 8/5/17.
//  Copyright © 2017 Coolwater Design. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
  
  var player: Player!
  
  @IBOutlet weak var nextBtn: BorderButton!
  
  @IBAction func onNextTapped(_ sender: Any) {
    performSegue(withIdentifier: "skillVCSegue", sender: self)
  }
  
  override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

  @IBAction func onMensTapped(_ sender: Any) {
    selectLeague(leagueType: "mens")
  }
  
  @IBAction func onWomensTapped(_ sender: Any) {
    selectLeague(leagueType: "womens")
  }
  
  @IBAction func onCoedTapped(_ sender: Any) {
    selectLeague(leagueType: "coed")
  }
  
  func selectLeague(leagueType: String) {
    player.desiredLeague = leagueType
    nextBtn.isEnabled = true
  }
  
  // prepareForSegue is *ALWAYS* called before viewDidLoad on destination VC
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let skillVC = segue.destination as? SkillVC {
      skillVC.player = player
    }
  }
}
