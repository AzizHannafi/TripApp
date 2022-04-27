//
//  ViewController.swift
//  TripApp
//
//  Created by Orangeodc11 on 26/4/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
var tab:[PlaceModel] = [PlaceModel(title: "tunis", category: "category", ditancce: "50"),PlaceModel(title: "hammamet", category: "Zone tourestique", ditancce: "55"),PlaceModel(title: "ariana", category: "chapati mile7a", ditancce: "43")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tab.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "PlaceTableViewCell", for: indexPath) as! PlaceTableViewCell
        Cell.Place.text = self.tab[indexPath.row].title
        Cell.Category.text = self.tab[indexPath.row].category
        Cell.Distance.text = self.tab[indexPath.row].distance
        return Cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "MoveToDetail", sender: self.tab[indexPath.row])

    }
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        TableView.register(UINib.init(nibName: "PlaceTableViewCell", bundle: nil), forCellReuseIdentifier: "PlaceTableViewCell")
        TableView.reloadData()
        // Do any additional setup after loading the view
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="MoveToDetail"{
            let destination = segue.destination as! PlaceDetailViewController
            let placeObject = sender as! PlaceModel
            destination.placeModel = placeObject
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}

