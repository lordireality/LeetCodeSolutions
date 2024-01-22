class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var totalSum = nums.reduce(0, +)
        var leftSum = 0
        
        for (index, num) in nums.enumerated() {
            if leftSum  == totalSum - leftSum - num {
                return index
            }
            leftSum += num
        }
        
        return -1
    }
}
