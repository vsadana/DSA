import UIKit

var greeting = "Hello, playground"

//MARK: factorial
func factorial(_ num : Int) -> Int {
    if num == 0 || num == 1 {
        return 1
    }
    return num * factorial(num - 1)
    
    
}
factorial(5)
