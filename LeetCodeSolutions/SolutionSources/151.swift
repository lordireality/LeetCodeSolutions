class Solution {
    func reverseWords(_ s: String) -> String {
        //спасибо колледжу, я там столько строк насплитил...
        //любой сплит заведомо убирает кейс когда у нас "  " т.к. по сути символ является делиметером
        return s.split(separator: " ").reversed().joined(separator: " ")
    }
}
