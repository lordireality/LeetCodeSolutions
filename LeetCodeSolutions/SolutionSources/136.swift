class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var ans = 0
        for num in nums { ans ^= num }
        return ans
    }
}
