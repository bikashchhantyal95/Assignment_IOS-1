//
//  ViewController.swift
//  Assignment_IOS-1
//
//  Created by Bikash Chhantyal on 2023-05-24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func getSportsData(_ sender: Any) {
        let url = "https://v3.football.api-sports.io/teams?id=1"
        let header = "x-apisports-key"
        let authToken = "d69036aadf632739eccdb08c7821cb77"
        Task{
            print(await API_Helper.fetchData(urlString: url, authToken: authToken, header: header)!)
        }
    }
}
