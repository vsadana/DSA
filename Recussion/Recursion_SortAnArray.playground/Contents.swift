import UIKit

var greeting = "Hello, playground"

func sort(arr : inout [Int]) -> [Int]{
    if arr.count ==  1 { return arr}
    let temp = arr[arr.count - 1]
    arr.removeLast()
    sort(arr: &arr)
    insert(arr: &arr, temp: temp)
    return arr
}

func insert(arr : inout [Int], temp : Int ) {
    if arr.count == 0 || arr[arr.count - 1] <= temp {
        arr.append(temp)
        return
    }
    
    let val = arr[arr.count - 1]
    arr.removeLast()
    insert(arr: &arr, temp: temp)
    arr.append(val)
    return
}

var arr = [1,6,3,8,2]
sort(arr: &arr)
