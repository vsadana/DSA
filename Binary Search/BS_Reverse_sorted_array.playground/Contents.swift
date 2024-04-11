import UIKit

var greeting = "Hello, playground"

//MARK: Binary search
let arr = [20,17,16,15,14,12,9,8,5,3,2,1]

func binarySearch(arr: [Int], num: Int) ->Int {
    var start = 0
    var end = arr.count - 1
    
    while start < end {
        /// this (start+mid)/2 might overflow in case of high integer
        /// so use below
        var mid = start + (end - start) / 2
        
        if arr[mid] == num {
            return mid
        } else if num < arr[mid] {
            start = mid + 1
        } else {
            end = mid -  1
        }
    }
    return -1
}

binarySearch(arr: arr, num: 9 )
