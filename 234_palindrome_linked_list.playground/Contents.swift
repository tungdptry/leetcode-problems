
public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

// 1 -> 2 -> 2 -> 2 -> 1
func isPalindrome2(_ head: ListNode?) -> Bool {
    var array: [Int] = []
    var current = head
    while current != nil {
        array.append(current!.val)
        current = current?.next
    }
    var reversed: [Int] = array.reversed()
    for i in 0..<reversed.count {
        if reversed[i] != array[i] {
            return false
        }
    }
    return true
}

// 1 -> 2 -> 2 -> 2 -> 1
func isPalindrome(_ head: ListNode?) -> Bool {
    var current = head
    var prev: ListNode? = nil
    var next = current?.next
    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    return true
}


