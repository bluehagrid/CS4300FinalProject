//
//  HandOfCardsViewController.swift
//  CS4300FinalProject
//
//  Created by Brett Sillitoe on 4/15/20.
//  Copyright © 2020 Jacob Jackson. All rights reserved.
//

import UIKit

class HandOfCardsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    let cards = ["a","b"]
    var index = 0
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cards[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTable.dataSource = self
        myTable.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
          self.index = indexPath.row
          performSegue(withIdentifier: "cardSeg", sender: self)
      }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destination = segue.destination as! CardViewController
            //destination.imageSource = reptiles[index]
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
