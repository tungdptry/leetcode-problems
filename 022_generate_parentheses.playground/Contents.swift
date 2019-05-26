class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var res = [String]()
        res += generate(currentString: "", left: n, right: 0)
        return res
    }
    
    func generate(currentString: String, left: Int, right: Int) -> [String] {
        var res = [String]()
        if left == 0 && right == 0 {
            res += [currentString]
            return res
        }
        if left > 0 {
            res += generate(currentString: currentString + "(", left: left - 1, right: right + 1)
        }
        if right > 0 {
            res += generate(currentString: currentString + ")", left: left, right: right - 1)
        }
        return res
    }
    
}

let sol = Solution()
sol.generateParenthesis(1)
sol.generateParenthesis(2)
sol.generateParenthesis(3)
sol.generateParenthesis(4)
