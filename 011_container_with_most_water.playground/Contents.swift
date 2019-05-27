
// s = (end - begin) * (a[end] - a[begin])

func abs(_ a: Int) -> Int {
    return a >= 0 ? a : -a
}

func min(_ a: Int, _ b: Int) -> Int {
    return a < b ? a : b
}

func max2(_ a: Int, _ b: Int) -> Int {
    return a > b ? a : b
}

func maxArea(_ height: [Int]) -> Int {
    let count = height.count
    var left = 0
    var right = count - 1
    var max = 0
    while left < right {
        let h = min(height[left], height[right])
        max = max2(max, (right - left) * h)
        while height[left] <= h && left < right {
            left += 1
        }
        while height[right] <= h && left < right {
            right -= 1
        }
    }
    return max
}



maxArea([1,8,6,2,5,4,8,3,7])
