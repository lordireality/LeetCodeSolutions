class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var curr = head
        while curr != nil {
        let nextTemp = curr?.next
        curr?.next = prev
        prev = curr
        curr = nextTemp
        }
        return prev
    }
}
