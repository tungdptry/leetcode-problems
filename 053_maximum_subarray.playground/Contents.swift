
func maxCenterSum(_ nums: [Int], from: Int, to: Int, center: Int) -> Int {
    var sum = 0
    var leftSum = 0
    var i = center - 1
    while i >= from {
        sum += nums[i]
        leftSum = max2(leftSum, sum)
        i -= 1
    }
    i = center + 1
    sum = 0
    var rightSum = 0
    while i <= to {
        sum += nums[i]
        rightSum = max2(rightSum, sum)
        i += 1
    }
    return leftSum + rightSum + nums[center]
}

func maxSubArray(_ nums: [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    if nums.count == 1 {
        return nums[0]
    }
    let count = nums.count
    let mid = nums.count / 2
    let maxLeft = maxSubArray(Array(nums[0..<mid]))
    let maxRight = maxSubArray(Array(nums[mid..<count]))
    let maxCenter = maxCenterSum(nums, from: 0, to: count - 1, center: mid)
    return max3(maxLeft, maxRight, maxCenter)
}

func max3(_ a: Int, _ b: Int, _ c: Int) -> Int {
    return max2(max2(a, b), c)
}

func max2(_ a: Int, _ b: Int) -> Int {
    return a > b ? a : b
}

//let nums = [1 , -2, -3, 4, -1, 2, 1, -5, 4]
//let nums = [1, 2, -1]
maxSubArray([1, 2, -1])
maxSubArray([-2, -1])
