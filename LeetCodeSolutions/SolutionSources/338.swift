
class Solution {
    func countBits(_ n: Int) -> [Int] {
        var result = [Int]()

        for num in 0...n {
            var sum = 0

            for str in String(num, radix: 2) {
                sum += Int(String(str)) ?? 0
            }

            result.append(sum)
            sum = 0
        }

        return result
    }
}
