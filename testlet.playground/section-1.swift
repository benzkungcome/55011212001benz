// Playground - noun: a place where people can play

let tutorialTeam = 56
let editorialTeam = 23
let totalTeam = tutorialTeam + editorialTeam

totalTeam + 1

let priceIntInferred = -19
let priceIntExplicit:Int = -19

let priceInferred = -19.99
let priceExplicit:Double = -19.99

let priceFloatInferred = -19.99
let priceFloatExplicit:Float = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Hello world"
let nameExplicit:String = "Hello World"

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs", "Milk"]

var shoppingList = ["Eggs", "Milk"]
println("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
var firstItem = shoppingList[2]
shoppingList[0] = "Six eggs"
shoppingList

if (onSaleInferred) {
    println("\(nameInferred) on sale for \(priceIntInferred)!")
} else {
    println("\(nameInferred) at regular price: \(priceIntInferred)!")
}

var array2 = ["a", "b", "c"]
var str = " "
for str in array2 {
    println(str)
}

shoppingList += ["Bird", "Chicken"]

for str in shoppingList {
    println(str)
}

