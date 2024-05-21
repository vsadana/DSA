import UIKit

var greeting = "Hello, playground"

func printo(_ num : Int) {
    if num == 0 {
        return
    }
    printo(num-1)
    print(num)
}
printo(2)
