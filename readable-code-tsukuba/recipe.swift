//
//  recipe.swift
//  readable-code-tsukuba
//
//  Created by Yu Kadowaki on 7/4/15.
//  Copyright (c) 2015 Yu Kadowaki. All rights reserved.
//

import Foundation

class Recipe {
    
    var recipeDataDictionary: [Int:String] = [:]
    
    init() {
        readRecipeData()
    }
    
    // MARK: 処理系関数
    func readRecipeData() {
        let filePath = "/Users/minami/readable-code/gates1de-readable-code-tsukuba/readable-code-tsukuba/recipe-data.txt"
        if let recipeDataString = String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding, error: nil) {
            self.recipeDataDictionary =  self.convertDataStringToDictionary(recipeDataString)
        }
    }
    
    private func convertDataStringToDictionary(originalString: String) -> [Int : String] {
        var dictionary: [Int:String] = [:]
        originalString.enumerateLines( {
            (line, stop) in
                let index = dictionary.count + 1
                dictionary[index] = line
            }
        )
        return dictionary
    }
    
    
    // MARK: 表示系関数
    func printAllRecipeData() {
        for var i = 1; i <= self.recipeDataDictionary.count; i++ {
            printRecipeDataById(i)
        }
    }
    
    func printRecipeDataById(id: Int) {
        if let content = self.recipeDataDictionary[id] {
            println(String(id) + ": " + content)
        }
    }
    
}
