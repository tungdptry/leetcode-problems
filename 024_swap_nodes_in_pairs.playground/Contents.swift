public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

// 1 -> 2 -> 3 -> 4
// 2 -> 1 -> 4 -> 3

class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var first = head
        var second = head?.next
        while first != nil && second != nil {
            let temp = second!.val
            second?.val = first!.val
            first?.val = temp
            
            first = second?.next
            second = first?.next
        }
        return head
    }
}

func printList(_ node: ListNode?) {
    var temp = node
    while temp != nil {
        print("\(temp!.val) ")
        temp = temp?.next
    }
}

let node = ListNode(1)
node.next = ListNode(2)
node.next?.next = ListNode(3)
node.next?.next?.next = ListNode(4)
node.next?.next?.next?.next = ListNode(5)

let sol = Solution()

printList(sol.swapPairs(node))

