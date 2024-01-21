class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0
        var j = height.count - 1
        var maxAmount = 0
        while i < j {
            maxAmount = max(maxAmount, min(height[i], height[j]) * (j - i))
            if height[i] < height[j] { i += 1 } else { j -= 1 }
        }
        return maxAmount
    }
}
