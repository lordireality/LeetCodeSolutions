class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum = 0
        for i in 0..<k {
            sum += nums[i]
        }
        var maxSum = sum

        for i in k..<nums.count {
            sum += nums[i] - nums[i - k]
            maxSum = max(maxSum, sum)
        }

        return Double(maxSum) / Double(k)

    }
}
