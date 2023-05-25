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
            print("Sports data API:-")
            print(await API_Helper.fetchData(urlString: url, authToken: authToken, header: header)!)
        }
    }
    
    @IBAction func getAnimeTitleAndQuotes(_ sender: Any) {
        let url = "https://animechan.vercel.app/api/quotes"
        Task{
            print("Anime Title and Quotes Data Api:-")
            print(await API_Helper.fetchData(urlString: url)!)
        }
    }
    
    @IBAction func getDigimonCharacters(_ sender: Any) {
        let url = "https://digimon-api.vercel.app/api/digimon"
        Task{
            print("Digimon Characters Data Api:-")
            print(await API_Helper.fetchData(urlString: url)!)
        }
    }
   
}
