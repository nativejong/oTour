//
//  rateVC.swift
//  Example
//
//  Created by John Blaine on 12/1/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

import UIKit
import oTour


class rateVC: UIViewController {
    var rate : oTour?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = []
        
        rate = oTour(frame: CGRect.zero)
        self.view.addSubview(rate!)
        self.view.backgroundColor = UIColor.red
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.insertData()
    }
    
    func insertData() {
        rate?.addDscr("Hello")
        rate?.addLogo("https://raw.githubusercontent.com/nativejong/oTour/main/images/japangirl.jpg", date: nil)
        rate?.addPhoto("https://raw.githubusercontent.com/nativejong/oTour/main/images/japan.png", date: nil)
        rate?.refresh()
    }
    
    override func viewWillLayoutSubviews() {
        let w = self.view.frame.size.width;
        let h = self.view.frame.size.height;
        rate?.frame = CGRect(x: w * 0.0, y: h * 0.0, width: w * 1.0, height: h * 1.0)
    }

}
