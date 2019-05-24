
func abs(_ a: Int) -> Int {
    return a >= 0 ? a : -a
}

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    let sorted = nums.sorted()
    let count = sorted.count
    var res = nums[0] + nums[1] + nums[2]
    
    for i in 0..<count - 2 {
        var j = i + 1
        var k = count - 1
        
        while j < k {
            let sum = sorted[i] + sorted[j] + sorted[k]
            if sum < target {
                j += 1
            } else {
                k -= 1
            }
            if abs(target - sum) < abs(target - res) {
                res = sum
            }
        }
    }
    
    return res
}

threeSumClosest([-1, 2, 1, -4], 1)

