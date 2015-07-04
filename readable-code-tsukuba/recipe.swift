//
//  recipe.swift
//  readable-code-tsukuba
//
//  Created by Yu Kadowaki on 7/4/15.
//  Copyright (c) 2015 Yu Kadowaki. All rights reserved.
//

import Foundation

class Recipe {
    var recipeDataString: String!
    
    func readRecipeData() {
        let filePath = "/Users/gates1de/develop/swift/readable-code-tsukuba/readable-code-tsukuba/recipe-data.txt"
        self.recipeDataString = String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding, error: nil)
    }
    
    func printRecipeData() {
        println(self.recipeDataString)
    }
}
