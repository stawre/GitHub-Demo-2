//
//  GithubRepoSearchSettings.swift
//  GithubDemo
//
//  Created by Nhan Nguyen on 5/12/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

import Foundation

// Model class that represents the user's search settings
class GithubRepoSearchSettings {
    var searchString: String?
    //var minStars = UserDefaults.standard.data(forKey: "minStars")
    var minStars = 0

    init() {
        
    }
}
