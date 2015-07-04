#仕様6 指定したIDに対応するレシピを出力

##元となるレシピ
```
オムライス
親子丼
杏仁豆腐

```
## まずは、Recipeインスタンスを作成
```swift
var recipe = Recipe()
```

## ID:${id} のレシピを出力する方法
###実装方法
```swift
recipe.printRecipeDataById(id)
```
###出力結果(id=2の場合)
```
2: 親子丼
```

## すべてのレシピを出力する方法
###実装方法
```swift
recipe.printAllRecipeData()
```
###出力結果
```
1: オムライス
2: 親子丼
3: 杏仁豆腐
```
