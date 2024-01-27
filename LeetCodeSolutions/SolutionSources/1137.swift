class Solution {
    func tribonacci(_ n: Int) -> Int {
        var t = Array(repeating: 0, count: n + 1)
        if n == 0 {
            return 0
        }
        if n == 1 || n == 2 {
            return 1
        }
        t[0] = 0
        t[1] = 1
        t[2] = 1
        for i in 3...n {
            t[i] = t[i - 3] + t[i - 2] + t[i - 1]
        }
        return t[n]
    }
}
