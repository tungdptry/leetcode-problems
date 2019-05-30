
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        let p: Int = bSearchPivot(nums, from: 0, to: nums.count - 1, target)
        
        if p == -1 {
            return bSearch(nums, from: 0, to: nums.count - 1, target)
        }
        let left = bSearch(nums, from: 0, to: p, target)
        let right = bSearch(nums, from: p + 1, to: nums.count - 1, target)
        if left != -1 {
            return left
        }
        return right
    }
    
    func bSearch(_ nums: [Int], from: Int, to: Int, _ target: Int) -> Int {
        if from > to || nums.count == 0 {
            return -1
        }
        let mid = (from + to) / 2
        if nums[mid] == target {
            return mid
        } else if nums[mid] > target {
            return bSearch(nums, from: from, to: mid - 1, target)
        } else {
            return bSearch(nums, from: mid + 1, to: to, target)
        }
    }
    
    func bSearchPivot(_ nums: [Int], from: Int, to: Int, _ target: Int) -> Int {
        if from > to || nums.count == 0 {
            return -1
        }
        let mid = (from + to) / 2
        if mid + 1 <= to && nums[mid] > nums[mid + 1] {
            return mid
        } else {
            return bSearch(nums, from: mid + 1, to: to, target)
        }
    }
}

let sol = Solution()
//let arr = [4,5,6,7,0,1,2]
let arr = [5, 1, 3]
sol.search(arr, 5)
