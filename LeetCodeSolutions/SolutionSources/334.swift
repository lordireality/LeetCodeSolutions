class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {

        var i: Int = .max
        var j: Int = .max
        for num in nums {
            if num < i {
                //if num smaller than i, it becomes i, and we going to next iteration
                i = num
            } else if num > i && num < j {
                //if num greater than i and smaller than j, it becomes j
                j = num
            } else if num > j {
                //k > j, then we found triplet, if no, we are going to next iteration
                return true
            }
        }
        return false

    }
}
