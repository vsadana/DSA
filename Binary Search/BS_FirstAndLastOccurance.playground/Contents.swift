import UIKit

var greeting = "Hello, playground"

//MARK: Binary search
let arr = [1,2,3,4,7,7,7,11,8,9,10]
func binarySearch(arr: [Int], num: Int) ->Int {
    var start = 0
    var end = arr.count - 1
    var res = 0
    while start <= end {
        /// this (start+mid)/2 might overflow in case of high integer
        /// so use below
        var mid = start + (end - start) / 2
        
        if arr[mid] == num {
            res = mid
//            end = mid - 1 // fist occurance
            start = mid + 1 // last occurance
        }
        else if num < arr[mid] {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return res
}

binarySearch(arr: arr, num: 7 )
