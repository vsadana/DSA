import UIKit

var greeting = "Hello, playground"

/// find the element in infinte sorted
/// first find the start and end range in which element is present
func findElementInInfiniteArray(arr: [Int], num : Int)  -> Int{
    var start = 0
    var end = 1
    
    while num > arr[num] {
        start = end
        end = end * 2
    }
    
    while start <= end {
        var mid  = start + (end - start) / 2
        
        if arr[mid] ==  num {
            return mid
        } else if arr[mid] < num {
            start = mid + 1
            
        } else {
            end = mid - 1
        }
    }
    return -1
}


