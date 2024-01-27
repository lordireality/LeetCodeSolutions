/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func goodNodes(_ root: TreeNode?) -> Int { goodNodes(root,maxNumber: Int.min) }
    
    func goodNodes(_ root: TreeNode?, maxNumber: Int) -> Int {
        guard let root = root else { return 0 }
        let isGoodNode = root.val >= maxNumber
        let newMax = max(maxNumber, root.val)
        return goodNodes(root.left, maxNumber: newMax) + goodNodes(root.right, maxNumber: newMax) + (isGoodNode ? 1 : 0 )
    }
}
