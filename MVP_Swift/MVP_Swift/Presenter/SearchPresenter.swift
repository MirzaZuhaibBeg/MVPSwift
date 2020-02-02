//
//  SearchPresenter.swift
//  MVP_Swift
//
//  Created by Mirza Zuhaib Beg on 02/02/20.
//  Copyright © 2020 Mirza Zuhaib Beg. All rights reserved.
//

import UIKit

/// SearchPresenterProtocol will be implemented by Search Presenter class
protocol SearchPresenterProtocol {

    /// Method to get Search List
    func getSearchList()
}

/// SearchPresenter will act as presenter for SearchViewController
class SearchPresenter: SearchPresenterProtocol {
    
    var searchItemArray: [SearchItem]?

    weak var view: SearchViewControllerProtocol?

    required init(view: SearchViewControllerProtocol) {
        self.view = view
    }
    
    // MARK:- SearchPresenterProtocol Methods
    /// Method to get Search List
    internal func getSearchList() {
        ServiceHelper.sharedInstance.searchFromItunes(withSearchText: "jackjohnson", entity: "musicVideo") { (sucess, data, error) in
            if let data = data as? [SearchItem] {
                self.searchItemArray = data
                self.view?.didReceivedData(withSearchItemArray: self.searchItemArray)
            } else {
                self.view?.didReceivedError(withError: error)
            }
        }
    }
}
