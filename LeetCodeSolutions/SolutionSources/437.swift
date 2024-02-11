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
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> Int {
        func go(_ node: TreeNode?, _ targets: [Int]) -> Int {

            guard let node = node else { return 0 }

            let newTargets = targets.map { $0 - node.val } + [targetSum]
            
            return
                go(node.left, newTargets) +
                go(node.right, newTargets) +
                targets
                    .lazy
                    .filter { $0 == node.val }
                    .count
        }

        return go(root, [targetSum])
    }
}
