import UIKit

var greeting = "Hello, playground"
/// Floor of an element
/// floor of 7.8 is 7, 5.2 is 5, 8 is 8
/// ceil of 7.8 is 8, 5.2 is 6
/// input 5: if floor of  number is present in the array return the index
/// else return the greatest eleemnt smaller than number
/// // store in res if element is greater than mid else don't store
//MARK: return max element less than floor


//MARK: Binary search
let arr = [1,2,3,4,5,8,10,10,12,19]
func binarySearch(arr: [Int], num: Int) ->Int {
    var start = 0
    var end = arr.count - 1
    var res = -1
    while start <= end {
        /// this (start+mid)/2 might overflow in case of high integer
        /// so use below
        var mid = start + (end - start) / 2
        if arr[mid] == num {
            return arr[mid]
        }
        if arr[mid] < num {
            res = arr[mid]
            start = mid + 1
        } else if num < arr[mid] {
            end = mid - 1
        }
    }
    return res
}

binarySearch(arr: arr, num: 5)
