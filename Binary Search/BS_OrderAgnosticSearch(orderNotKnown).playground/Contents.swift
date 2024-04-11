import UIKit

var greeting = "Hello, playground"

func checkArrayOrder(arr: [Int]) {
    var order = ""
    if arr.count > 1 {
        if arr[0] < arr[1] {
            order = "ascending"
        } else {
            order = "descending"
        }
    }
}
