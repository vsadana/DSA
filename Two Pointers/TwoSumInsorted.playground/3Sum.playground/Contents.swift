import UIKit

var greeting = "Hello, playground"

func threeSum(_ nums: [Int]) -> [[Int]]  {
    let num = nums.sorted()
    var res = [[Int]]()
    for (i, j) in num.enumerated() {
        var left = i + 1
        var right = num.count - 1
        while left < right {
            let threeSum = j + num[left] + num[right]
            if threeSum > 0 {
                right -= 1
            } else if threeSum < 0 {
                left += 1
            } else {
                if !res.contains([j, num[left], num[right]]) {
                    res.append([j, num[left], num[right]])
                }
                left += 1
                while num[left] == num[left - 1]  && left < right {
                    left += 1
                }
            }
        }
    }
    return res
}

threeSum([-1,0,1,2,-1,-4])
