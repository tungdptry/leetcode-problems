

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var c1 = l1
        var c2 = l2
        let head: ListNode? = ListNode(Int.min)
        var temp = head
        while c1 != nil && c2 != nil {
            if c1!.val <= c2!.val {
                temp?.next = ListNode(c1!.val)
                c1 = c1?.next
            } else {
                temp?.next = ListNode(c2!.val)
                c2 = c2?.next
            }
            temp = temp?.next
        }
        while c1 != nil {
            temp?.next = ListNode(c1!.val)
            c1 = c1?.next
            temp = temp?.next
        }
        while c2 != nil {
            temp?.next = ListNode(c2!.val)
            c2 = c2?.next
            temp = temp?.next
        }
        return head?.next
    }
}

