class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        var maxCount = 0
        var count = 0
        let sArray = Array(s)

        for i in 0..<s.count {
            if i >= k {
                if vowels.contains(sArray[i - k]) {
                    count -= 1
                }
            }

            if vowels.contains(sArray[i]) {
                count += 1
                maxCount = max(maxCount, count)
            }
        }

        return maxCount

    }
}
