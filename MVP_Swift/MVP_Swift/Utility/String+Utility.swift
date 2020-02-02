//
//  String+Utility.swift
//  MVP_Swift
//
//  Created by Mirza Zuhaib Beg on 2/18/19.
//  Copyright © 2019 Mirza Zuhaib. All rights reserved.
//

import Foundation

extension String{
    
    func removingWhitespaces() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}
