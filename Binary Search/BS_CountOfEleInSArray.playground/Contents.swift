import UIKit

var greeting = "Hello, playground"

class BS {
    var start = 0
    var end = 0
    var store = -1
    func getCountOfSortedArray(arr: [Int], num : Int)-> Int {
        end = arr.count - 1
        
return getFirstOccurance(isFirstOcc: false, arr: arr,num) - getFirstOccurance(isFirstOcc: true, arr: arr,num) + 1
    }
    
    func getFirstOccurance(isFirstOcc : Bool, arr: [Int], _ num : Int) -> Int{
        store = -1
        start = 0
        end = arr.count - 1
        while start <= end {
            var mid = start + (end - start) / 2
            if arr[mid] == num {
                store =  mid
                if isFirstOcc {
                    end = mid - 1
                } else {
                    start = mid + 1
                }
            } else if num < arr[mid] {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        return store
    }
}

let bsObj = BS()
bsObj.getCountOfSortedArray(arr: [1,1,1,1,3,4,5,6,7,7,8], num: 4)
