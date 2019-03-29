
class Solution {
    
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let count1 = nums1.count
        let count2 = nums2.count
        
        let leftMedianIndex = (count1 + count2 + 1)/2
        let rightMedianIndex = (count1 + count2 + 2)/2
        
        
        
        return 0.0
    }
    
    
    // find 4th
    // 1, 3, 7, 8, 9
    // 2, 4, 5
    func findKth(_ nums1: [Int], _ nums2: [Int], k: Int) -> Int {
        let count1 = nums1.count
        let count2 = nums2.count
        // i = k
        // num > nums[i]
        //
        
        return 0
    }
    // 10
    // 1 3 5 7 8 9 10 11 12
    func findFirstNumberGreaterOrEqual(to number: Int, in sortedArray: [Int], firstIndex: Int, lastIndex: Int) -> Int? {
        guard firstIndex != lastIndex else {
            if sortedArray[firstIndex] > number {
                return firstIndex
            } else {
                return nil
            }
        }
        let medium = (firstIndex + lastIndex + 1) / 2
        print(medium)
        if sortedArray[medium] >= number {
            print("First index: \(firstIndex)")
            return findFirstNumberGreaterOrEqual(to: number, in: sortedArray, firstIndex: firstIndex, lastIndex: medium)
        } else {
            print("Last index: \(lastIndex)")
            return findFirstNumberGreaterOrEqual(to: number, in: sortedArray, firstIndex: medium + 1, lastIndex: lastIndex)
        }
    }
    
}

let solution = Solution()
let arr = [1, 3, 5, 7, 8, 9, 10, 11, 12]
let index = solution.findFirstNumberGreaterOrEqual(to: 12, in: arr, firstIndex: 0, lastIndex: arr.count - 1)
print(arr[index!])
