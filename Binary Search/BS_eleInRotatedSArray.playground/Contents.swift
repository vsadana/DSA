import UIKit

var greeting = "Hello, playground"

let arr = [8,9,10,1,2,3,4,6,7]
/// 1. find the min mid of the element
/// 2. then divide the array into 2 parts so that both the parts should be sorted
/// 3. apply BS in both the aprts and find the element
/// 4. any of the part wil return the element and rest will return -1
/// 5. return that part
func findNumberOfrotation(arr: [Int], _ num : Int) -> Int {
    var start = 0
    var end = arr.count - 1
    
    while start <= end {
        /// this (start+mid)/2 might overflow in case of high integer
        /// so use below
        var mid = start + (end - start) / 2
        var next = (mid + 1) % arr.count
        var prev = (mid + arr.count - 1) % arr.count

        if arr[mid] <=  arr[next] && arr[mid] <= arr[prev] {
            var end = mid - 1
            var start = 0
            let firstHalf = binarySearch(&start,&end, arr: arr,num)
            end = arr.count - 1
            start = mid
            let secondHalf = binarySearch(&start,&end, arr: arr,num)
            return firstHalf > 0 ? firstHalf : secondHalf
        }
        
        if arr[start] <= arr[mid] {
            start = mid + 1
        } else if  arr[mid]  <= arr[end]{
            end = mid - 1
        }
    }
    return -1
}


func binarySearch(_ start : inout Int, _ end :inout  Int, arr: [Int], _ num: Int) -> Int{
    
    while start <= end {
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
findNumberOfrotation(arr: arr, 7 )

