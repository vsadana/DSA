import UIKit

var greeting = "Hello, playground"
func nextAlphabet(arr: [Character], char : Character)-> Character {
    
    var start = 0
    var end = arr.count - 1
    var res : Character = "#"
    while start <= end {
        /// this (start+mid)/2 might overflow in case of high integer
        /// so use below
        var mid = start + (end - start) / 2
        if arr[mid] == char {
            start = mid + 1
        }
        if arr[mid] < char {
            start = mid + 1
        } else if char < arr[mid] {
            res = arr[mid]
            end = mid - 1
        }
    }
    return res
}

nextAlphabet(arr: Array("abcdef"), char: "b")
