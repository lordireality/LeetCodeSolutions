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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        func dfs(_ root: TreeNode?, _ leaf: inout [Int]) {
           guard let root else { return }
           if root.left == nil && root.right == nil {
               leaf.append(root.val)
               return
           }
           dfs(root.left, &leaf)
           dfs(root.right, &leaf)
       }

       var leaf1 = [Int]()
       var leaf2 = [Int]()
       dfs(root1, &leaf1)
       dfs(root2, &leaf2)

       return leaf1 == leaf2
    }
}
