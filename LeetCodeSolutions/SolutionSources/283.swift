class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        //очень простая задача. просто формируем буффер и скипаем нули при его заполнении, и получается что в конце остаются нули, которые были уже заполнены на старте
        var buff = Array(repeating: 0, count: nums.count)
        var lastIndex = 0
        for i in 0 ..< nums.count {
            if nums[i] != 0{
                buff[lastIndex] = nums[i]
                lastIndex+=1
            }
        }
        nums = buff
    }
}
