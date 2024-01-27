class Solution {
    func decodeString(_ s: String) -> String {
        var stack: [(String, Int)] = []
        var currentNum = 0
        var currentString = ""

        for char in s {
            if char.isNumber {
                currentNum = currentNum * 10 + Int(String(char))!
            } else if char == "[" {
                stack.append((currentString, currentNum))
                currentString = ""
                currentNum = 0
            } else if char == "]" {
                if let (prevString, num) = stack.popLast() {
                    currentString = prevString + String(repeating: currentString, count: num)
                }
            } else {
                currentString.append(char)
            }
        }

        return currentString

    }
}
