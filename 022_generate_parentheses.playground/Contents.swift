class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var res = [String]()
        res += generate(currentString: "", left: 0, right: 0, n: n)
        return res
    }
    
    func generate(currentString: String, left: Int, right: Int, n: Int) -> [String] {
        var res = [String]()
        if currentString.count == 2 * n {
            res += [currentString]
            return res
        }
        if left < n {
            res += generate(currentString: currentString + "(", left: left + 1, right: right, n: n)
        }
        if right < left {
            res += generate(currentString: currentString + ")", left: left, right: right + 1, n: n)
        }
        return res
    }
    
}

let sol = Solution()
sol.generateParenthesis(1)
sol.generateParenthesis(2)
sol.generateParenthesis(3)
sol.generateParenthesis(4)
