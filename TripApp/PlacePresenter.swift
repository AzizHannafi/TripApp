//
//  PlacePresenter.swift
//  TripApp
//
//  Created by Orangeodc11 on 27/4/2022.
//

import Foundation
protocol PlaceNotifier {
    func showLoading()
    func getAllplaces(ListofPlaces: [PlaceModel])
    func hideLoading()
    
}
class PlacePresenter
{
    var placeNotifier:PlaceNotifier!
    func fetchAllPlaces()
    {
        placeNotifier.showLoading()
        
        var myArr:[PlaceModel] = [ PlaceModel(title: "", category: "", ditancce: ""),PlaceModel(title: "", category: "", ditancce: ""),PlaceModel(title: "", category: "", ditancce: "")]
        placeNotifier.getAllplaces(ListofPlaces: myArr)
        placeNotifier.hideLoading()
    }
}
