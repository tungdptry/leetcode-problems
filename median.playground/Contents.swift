
class Solution {
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        
        
        return 0.0
    }
    
    // k is number of element in each partition
    func findDividePosition(_ nums1: [Int], _ nums2: [Int], k: Int) -> Int {
        let result = nums1.count / 2
        if nums1[result] < nums2[k - result] && nums2[result] < nums1[k - result] {
            return result
        } else if (nums1[result] > nums2[k - result]) {

        } else if (nums2[result] < nums1[k - result]) {
            
        }
        return -1
    }
    
}

[1, 3, 5, 6, 7]
[2, 4, 8]
[1, 2, 3, 4, 5, 6, 7, 8]
let solution = Solution()

