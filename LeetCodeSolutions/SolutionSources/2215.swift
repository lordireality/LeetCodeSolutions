
class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var nums1Without2 = Set(nums1).subtracting(nums2)
        var nums2Without1 = Set(nums2).subtracting(nums1)
        return [nums1Without2,nums2Without1].map(Array.init)
    }
}
