//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Christie on 8/4/17.
//  Copyright © 2017 Coolwater Design. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
