class Solution {
    //суть идеи, что мы ходим одновременно слева и справа слова пока не наткнемся на совпадающую из списка букву, дальше ходим только в ту сторону в которой не было совпадения
    func reverseVowels(_ s: String) -> String {
        //готов расцеловать компилятор за то что пояснил
        //error: cannot convert value of type 'String.Element' (aka 'Character') to expected argument type 'String'
        let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var sArr = Array(s)
        var lInd = 0
        var rInd = s.count - 1

        while lInd < rInd {
            if vowels.contains(sArr[lInd]) && vowels.contains(sArr[rInd]) {
                sArr.swapAt(lInd, rInd)
                lInd += 1
                rInd -= 1
            } else if vowels.contains(sArr[lInd]) {
                rInd -= 1
            } else if vowels.contains(sArr[rInd]) {
                lInd += 1
            } else {
                lInd += 1
                rInd -= 1
            }
        }
        return String(sArr)
    }
}
