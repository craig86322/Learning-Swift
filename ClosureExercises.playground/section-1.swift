// Closure Exercises.

import UIKit

// Arrays ****************************************************

// Three ways to create an empty Int array
/*
var array1 = Array<Int>()
var array2 = [Int]()
var array3: [Int] = []

// Load empty arrays with data sets
let ARRAYMAX = 10
var odds:[Int] = []
var evens:[Int] = []
var randoms:[Int] = []
var alphas:[Character] = []

// Load with even numbers
for i in 1...ARRAYMAX {
    if i % 2 == 0 {
        evens.append(i)
    }
}
println("evens: \(evens)")

// Load with odd numbers
for  var i=0; i<=ARRAYMAX; i++ {
    if i % 2 == 1 {
        odds.append(i)
    }
}
println("odds: \(odds)")

// Load with random numbers
for i in 1...ARRAYMAX {
    randoms.append(Int(arc4random_uniform(20)))
}
println("randoms: \(randoms)")

// Load with the alphabet
let alphabet = "abcdefghijklmnopqrstuvwxyz"
for c in alphabet {
    alphas.append(c)
}
println(alphas)

*/
// Map ***************************************************************

println("map()")

// Convert an array of temperatures in F to C
// C = (F - 32) * ( 5 / 9)
// F = C * ( 9 / 5 ) + 32

var degreesF = [-10.5, 32.0, 60.9, 80.3, 100.9, 115]

// Pass the temperature conversion forumla to map() via a named function
func cToF (t:Double) -> Double {
    return ( t - 32 ) * (5 / 9 )
}
var degreesC = degreesF.map(cToF)
println("1: \(degreesC)")

// Pass the forumla to map() via a closure
println("2: \(degreesF.map({($0 - 32) * (5 / 9)}))")

// Create a string with 'C' appended to the temp and lose most of the decimals
var degreesC2 = degreesC.map({"\(round($0))C"})
println("3: \(degreesC2)")

//  Tricky point to note: Set the temperature array to all integers
var degreesFInt = [-10, 32, 60, 80, 100, 115]
var degreesC3 = degreesFInt.map({($0 - 32) * (5 / 9)})
// Prints '0' for each temp because the compiler infers integer math so 5/9 is truncated to 0
println("4: \(degreesC3)")


// Filter **********************************************************
/*
println("filter()")

// Use filter() to create arrays of even and odd numbers
var numbers:[Int] = []
for var i=0; i<=10; i++ {
    numbers.append(i)
}

// pass a funtion to filter on odd numbers
func oddFunc (x:Int) -> Bool {
    return x % 2 == 1
}
println("\(numbers.filter(oddFunc))")

// filter using closures
let evens = numbers.filter({($0 % 2) == 0})
let odds = numbers.filter({($0 % 2) == 1})
println(evens)
println(odds)
*/

// Reduce ************************************************************
/*
println("reduce()")

// Init an array with digits from 0...10
var numbers2:[Int] = []
for var i=0; i<=10; i++ {
    numbers2.append(i)
}

// pass a function to add all the numbers
func addEmUp(x:Int, y:Int)->Int {
    return x+y
}
println("\(numbers2.reduce(0,addEmUp))")

// Add them up using a closure
println("\(numbers2.reduce(0,{$0 + $1}))")

// A compact version of the same reduce operation
println("\(numbers2.reduce(0,+))")

// Add them up starting at 100
println("\(numbers2.reduce(100,+))")
*/

// Sort ********************************************************************
/*
println("sort()")

var nums = [5, 0, 9, 1, 3, 0, 8, 4]

// the sort method sorts its own array

// verbose version, using variable names and a return statement
nums.sort({ x, y in return x > y })
println(nums)

// more compactly, using default variables and implied return
nums.sort({$0 > $1})
println("\(nums)")

// even more compactly, only the operator, everything else implied
nums.sort(>)
println(nums)

// Note that nums.sort() sorts itself, but doesn't return a new array
var newsort = nums.sort(<)
// instead use...
var newsort2 = nums
// then
newsort2.sort(>)
println(newsort2)

// Since no value is returned that's also why it doesn't work like you might expect in println()
println("\(nums.sort(>)), \(nums)") // first arg returns (), second returns the array sorted by the first arg

*/



