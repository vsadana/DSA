import UIKit

var greeting = "Hello, playground"
/**
 Input: numbers = [2,7,11,15], target = 9
 Output: [1,2]
 */

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1
    for (i, j) in numbers.enumerated() {
        if numbers[left] + numbers[right] > target {
            right -= 1
        } else if numbers[left] + numbers[right] < target  {
            left += 1
        } else {
            return [left + 1, right + 1]
        }
    }
    return []
}


twoSum([1,3,4,5,7,10,11], 9)
