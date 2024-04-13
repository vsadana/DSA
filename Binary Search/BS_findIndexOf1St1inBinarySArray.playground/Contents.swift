import UIKit

var greeting = "Hello, playground"
/// 1. infinite binary sorted array
/// 2. prob is combination of 1st occurance and infinite sorted
/// 3. [0,0,0,0,0,0,0,1,1,1,1,1,1,1]

func findIndex(arr: [Int], num: Int)-> Int {
    var start = 0
    var end = 1
    var res = -1
    while num > arr[end] {
        start = end
        end = end * 2
    }
    
    while start <= end {
        var mid = ( start + end )  / 2
        if arr[mid] == num {
            end = mid - 1
            res = mid
        } else if num < arr[mid] {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    return res
}
