//
//  ViewController.swift
//  16Lesson
//
//  Created by Владислав Пуцыкович on 10.12.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIIntroductionView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.view.addSubview(view)
    }
    

}

