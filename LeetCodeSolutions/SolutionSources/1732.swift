class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var curAlt = 0
        var maxAlt = 0
        for val in gain {
            curAlt += val
            maxAlt = max(maxAlt, curAlt)
        }
        return maxAlt
    }
}
