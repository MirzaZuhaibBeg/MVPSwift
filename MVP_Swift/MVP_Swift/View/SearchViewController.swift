//
//  SearchViewController.swift
//  MVP_Swift
//
//  Created by Mirza Zuhaib Beg on 02/02/20.
//  Copyright © 2020 Mirza Zuhaib Beg. All rights reserved.
//

import UIKit

/// SearchViewControllerProtocol will be used to delegate events from presenter to view controller
protocol SearchViewControllerProtocol: class {
    
    /// Method will be called when Data is Received
    ///
    /// - Parameter searchItemArray: search Item Array
    func didReceivedData(withSearchItemArray searchItemArray: [SearchItem]?)
    
    /// Method will be called when error is Received
    ///
    /// - Parameter error: error
    func didReceivedError(withError error: String?)
}

/// SearchViewController class will act as view controller for Search View
class SearchViewController: UIViewController, SearchViewControllerProtocol {
    
    var presenter: SearchPresenterProtocol?

    // MARK: Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = SearchPresenter(view: self)
        self.presenter?.getSearchList()
    }
    
    // MARK: SearchViewControllerProtocol Methods
    /// Method will be called when Data is Received
    ///
    /// - Parameter searchItemArray: search Item Array
    func didReceivedData(withSearchItemArray searchItemArray: [SearchItem]?) {
        guard let _ = searchItemArray else {
            return
        }
        
        // Populate Data on UI
    }
    
    /// Method will be called when error is Received
    ///
    /// - Parameter error: error
    func didReceivedError(withError error: String?) {
        guard let _ = error else {
            return
        }

        // Populate Error on UI
    }
}
