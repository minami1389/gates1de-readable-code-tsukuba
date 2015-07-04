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
    var recipeDataStringArray = Array<String>()
    
    // MARK: 処理系関数
    func readRecipeData() {
        let filePath = "/Users/gates1de/develop/swift/readable-code-tsukuba/readable-code-tsukuba/recipe-data.txt"
        self.recipeDataString = String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding, error: nil)
    }
    
    func separtLines(originalString: String) {
        originalString.enumerateLines( { (line, stop) in
                let index = self.recipeDataStringArray.count + 1
                self.recipeDataStringArray.append("\(index): \(line)")
            }
        )
    }
    
    
    // MARK: 表示系関数
    func printAllRecipeData() {
        println(self.recipeDataString)
    }
    
    func printSeparateRecipeData() {
        self.separtLines(self.recipeDataString)
        for recipeString in self.recipeDataStringArray {
            println(recipeString)
        }
    }
}
