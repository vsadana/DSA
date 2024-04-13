import UIKit

var greeting = "Hello, playground"
/// find min difference
/// [1,2,3,4,5,10,15]
/// (if key is present) num = 5 return 5 as 5-5 0
/// (if key is not present)  num = 12 then find the adjacent 2 numbers
///

//MARK: Given a sorted array, find the element in the array which has minimum difference with the given number. .
func minDiffElementInSArray(arr: [Int], num : Int) -> Int{
    var start = 0
    var end = arr.count - 1
    // if num si greater than last return last
    if num > arr[end] {
      return arr[end]
    }
    while start <= end {
        
        var mid = start + (end - start ) / 2
        
        if arr[mid] == num {
            return arr[mid]
        } else if num <= arr[mid] {
            end = mid - 1
        } else if num >= arr[mid]{
            start = mid + 1
        }
    }
    
    if abs(arr[end] - num) < abs(arr[start] - num) {
        return arr[end]
    } else {
        return arr[start]
    }
}


minDiffElementInSArray(arr: [1,3,8,10,15], num: 16)
