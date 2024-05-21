import UIKit

var greeting = "Hello, playground"

class Node {
    var left : Node?
    var right : Node?
    var value : Int
    
    init(_ value: Int,left: Node? = nil, right: Node? = nil) {
        self.left = left
        self.right = right
        self.value = value
    }
}

func heightIfBTree(root : Node?) -> Int{
    if root == nil {
        return 0
    }
    let left = heightIfBTree(root: root?.left)
    let right = heightIfBTree(root: root?.right)
    return 1 + max(left, right)
}

var node = Node(0)
print(node.value)
node.left = Node(1)
node.left?.left = Node(2)
node.left?.left?.left = Node(3)
node.left?.right = Node(4)
node.left?.left?.right = Node(5)
heightIfBTree(root: node)

/*
        0
        /\
       1
       /\
      2  4
      /\
     3 5
 */
