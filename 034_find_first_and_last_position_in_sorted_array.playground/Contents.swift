class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        let left = bSearchFirst(nums, from: 0, to: nums.count - 1, target)
        
        if left == -1 {
            return [-1, -1]
        }
        let right = bSearchLast(nums, from: 0, to: nums.count - 1, target)
        return [left, right]
    }
    
    func bSearchLast(_ nums: [Int], from: Int, to: Int, _ target: Int) -> Int {
        if from > to {
            return -1
        }
        let mid = (from + to) / 2
        if nums[mid] == target && (mid == to || (mid + 1 <= to && nums[mid] < nums[mid + 1])) {
            return mid
        } else if nums[mid] > target {
            return bSearchLast(nums, from: from, to: mid - 1, target)
        } else {
            return bSearchLast(nums, from: mid + 1, to: to, target)
        }
    }
    
    func bSearchFirst(_ nums: [Int], from: Int, to: Int, _ target: Int) -> Int {
        if from > to {
            return -1
        }
        let mid = (from + to) / 2
        if nums[mid] == target && (mid == 0 || (mid - 1 >= 0 && nums[mid] > nums[mid - 1])) {
            return mid
        } else if nums[mid] == target {
            return bSearchFirst(nums, from: from, to: mid, target)
        } else if nums[mid] > target {
            return bSearchFirst(nums, from: from, to: mid - 1, target)
        } else {
            return bSearchFirst(nums, from: mid + 1, to: to, target)
        }
    }
}
let arr = [5,7,7,8,8,10]
let sol = Solution()
sol.searchRange(arr, 8)
//sol.bSearchFirst(arr, from: 0, to: arr.count - 1, 6)
