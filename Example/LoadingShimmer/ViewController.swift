//
//  ViewController.swift
//  LoadingShimmer
//
//  Created by jogendra on 05/20/2019.
//  Copyright (c) 2019 jogendra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapStop(_ sender: Any) {
        LoadingShimmer.stopCovering(view)
    }

    @IBAction func didTapStart(_ sender: Any) {
        LoadingShimmer.startCovering(view)
    }

}

