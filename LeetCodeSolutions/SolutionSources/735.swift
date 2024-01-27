class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack: [Int] = []

        for asteroid in asteroids {
            if asteroid > 0 {
                stack.append(asteroid)
            } else {
                while !stack.isEmpty && stack.last! > 0 && stack.last! < abs(asteroid) {
                    stack.removeLast()
                }

                if let last = stack.last, last > 0 {
                    if last == abs(asteroid) {
                        stack.removeLast()
                        continue
                    } else {
                        continue
                    }
                }

                stack.append(asteroid)
            }
        }
    return stack
    }
}
