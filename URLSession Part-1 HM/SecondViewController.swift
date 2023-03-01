//
//  SecondViewController.swift
//  URLSession Part-1 HM
//
//  Created by Dinar on 01.03.2023.
//

import UIKit

class SecondViewController: UIViewController {
    

    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        fetchButtonOne()
        
    }
    
    private func fetchButtonOne() {
       
    }

    

}
