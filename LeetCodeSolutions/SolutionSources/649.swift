class Solution {
    func predictPartyVictory(_ senate: String) -> String {
        var radiant = [Int]()
        var dire = [Int]()

        for (index, party) in senate.enumerated() {
            if party == "R" {
                radiant.append(index)
            } else {
                dire.append(index)
            }
        }

        let n = senate.count

        while !radiant.isEmpty && !dire.isEmpty {
            if radiant[0] < dire[0] {
                radiant.append(radiant[0] + n)
            } else {
                dire.append(dire[0] + n)
            }
            radiant.removeFirst()
            dire.removeFirst()
        }

        return radiant.isEmpty ? "Dire" : "Radiant"

    }
}
