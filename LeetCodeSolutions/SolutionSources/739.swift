
class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var ans: [Int] = Array(repeating: 0,
                               count: temperatures.count)
        var stack: [Int] = []
        for i in 0..<temperatures.count {
            while !stack.isEmpty,
                    let last = stack.last,
                    temperatures[i] > temperatures[last] {
                let prevDay = stack.removeLast()
                ans[prevDay] = i - prevDay
            }
            stack.append(i)
        }
        return ans
    }
}
