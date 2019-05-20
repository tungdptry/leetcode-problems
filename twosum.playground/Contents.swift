import Foundation

class Solution {
    var dict = [Int: Int]()
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (index, value) in nums.enumerated() {
            if let foundIndex = dict[target - value] {
                return [foundIndex, index]
            } else {
                dict[value] = index
            }
        }
        return []
    }
    
}

let solution = Solution()
print(solution.twoSum([3, 2, 4], 6))
