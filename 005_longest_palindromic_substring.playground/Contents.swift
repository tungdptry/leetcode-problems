class Solution {
    
//    Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.
//
//    Example 1:
//
//    Input: "babad"
//    Output: "bab"
//    Note: "aba" is also a valid answer.
//    Example 2:
//
//    Input: "cbbd"
//    Output: "bb"

    func longestPalindrome(_ s: String) -> String {
        if s.isEmpty {
            return ""
        }
        let characters = Array(s)
        
        var maxLength = 0
        var start = 0
        var end = 0
        for i in 0..<characters.count {
            if(isPalindrome(characters, start: i - maxLength - 1, end: i)) {
                start = i - maxLength - 1
                end = i
                maxLength += 2
            } else if (isPalindrome(characters, start: i - maxLength, end: i)) {
                end = i
                start = i - maxLength
                maxLength += 1
            }
        }
        return String(characters[start...end])
    }
    
    func isPalindrome(_ chars: [Character], start: Int, end: Int) -> Bool {
        var s = start
        var e = end
        guard s >= 0 else { return false }
        while(s <= e) {
            if(chars[s] != chars[e]) {
                return false
            }
            s += 1
            e -= 1
        }
        return true
    }
    
}

let sol = Solution()
sol.longestPalindrome("babad")
