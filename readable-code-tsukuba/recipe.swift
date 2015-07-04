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
    var recipeDataDictionary: [Int:String] = [:]
    
    init() {
        readRecipeData()
    }
    
    // MARK: 処理系関数
    func readRecipeData() {
        let filePath = "/Users/minami/readable-code/gates1de-readable-code-tsukuba/readable-code-tsukuba/recipe-data.txt"
        self.recipeDataString = String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding, error: nil)
    }
    
    func separateLines(originalString: String) {
        originalString.enumerateLines( {
            (line, stop) in
                let index = self.recipeDataDictionary.count + 1
                self.recipeDataDictionary[index] = line
            }
        )
    }
    
    
    // MARK: 表示系関数
    func printAllRecipeData() {
        println(self.recipeDataString)
    }
    
    func printSeparateRecipeData() {
        self.separateLines(self.recipeDataString)
        for (id,content) in self.recipeDataDictionary {
            println(String(id) + ": " + content)
        }
    }
    
    func printSeparateRecipeDataById(id: Int) {
        if let content = self.recipeDataDictionary[id] {
            println(String(id) + ": " + content)
        }
    }
}
