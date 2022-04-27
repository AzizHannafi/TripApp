//
//  PlaceDetailViewController.swift
//  TripApp
//
//  Created by Orangeodc11 on 26/4/2022.
//

import UIKit

class PlaceDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var placeModel:PlaceModel?
    {
        didSet
        {
            test()
        }
    }
    func test (){
        
    }
    @IBAction func showMoreDidTapped(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let placeModel = placeModel {
            self.titleLabel.text = placeModel.title
            self.textView.text = ""
            self.categoryLabel.text = placeModel.category
        }

        // Do any additional setup after loading the view.
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
