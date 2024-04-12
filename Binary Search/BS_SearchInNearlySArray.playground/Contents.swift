import UIKit

var greeting = "Hello, playground"


func searchInNearlySortedArray(arr : [Int], num : Int) -> Int {
    var start = 0
    var end  = arr.count - 1
    
    while start <= end {
        var mid = start + (end - start) / 2
        if arr[mid] == num { // compare with mid
            return mid
        } else if mid >= start && arr[mid - 1] == num { // compare with mid - 1
            // checking out of bound
            return mid - 1
        } else if mid + 1 <= end &&  arr[mid + 1 ] == num  {  // compare with mid + 1
            // checking out of bound
            return mid + 1
        } else if num < arr[mid]{
            end = mid - 2
        } else {
            start = mid + 2
        }
    }
    
    return -1
}


searchInNearlySortedArray(arr: [10,20,40,30,50,70,60], num: 70)
