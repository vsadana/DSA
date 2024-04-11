import UIKit

//MARK: Binary search
let arr = [1,2,3,4,6,7,8,9,10]
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
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return -1
}

binarySearch(arr: arr, num: 9 )


