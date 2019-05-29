
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var count = 0
        var current = head
        while current != nil {
            current = current?.next
            count += 1
        }
        
        let max = count - n
        if max == 0 {
            return head?.next
        }
        current = head
        var i = 1
        while i < max {
            current = current?.next
            i += 1
        }
        current?.next = current?.next?.next
        return head
    }
}

func printNode(node: ListNode?) {
    var curr = node
    while curr != nil {
        print("\((curr?.val)!) ")
        curr = curr?.next
    }
}

var node = ListNode(1)
node.next = ListNode(2)
node.next?.next = ListNode(3)
node.next?.next?.next = ListNode(4)
node.next?.next?.next?.next = ListNode(5)
let sol = Solution()
printNode(node: sol.removeNthFromEnd(node, 2))


