class Solution {
    func longestSubarray(_ nums: [Int]) -> Int {
        var left = 0
        var right = 0
        var zeroCount = 0
        var maxCount = 0
        while right < nums.count {
            if nums[right] == 0 {
                zeroCount += 1
            }
            while zeroCount > 1 {
                if nums[left] == 0 {
                    zeroCount -= 1
                }
                left += 1
            }
            maxCount = max(maxCount, right - left)
            right += 1
        }
        return maxCount
    }
}
