class Solution {
    func removeStars(_ s: String) -> String {
        s.reduce(into: "") { str, char in
            if char == "*" {
                str.removeLast()
            } else {
                str.append(char)
            }
        }
    }
}
