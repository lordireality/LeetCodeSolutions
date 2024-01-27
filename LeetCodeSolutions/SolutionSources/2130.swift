/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func pairSum(_ head: ListNode?) -> Int {
        var stack = [Int]()

        var head1 = head
        var maxx = 0
        while head1 != nil {
            stack.append(head1!.val)
            head1 = head1?.next
        }
        head1 = head
        for i in 0...stack.count/2-1 {
            print(stack.last!)
            maxx = max(head1!.val+stack.last!, maxx)
            stack.removeLast()
            head1 = head1?.next
        }
        return maxx
    }
}
