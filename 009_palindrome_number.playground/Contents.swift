
func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
        return false
    }
    var current = x
    var result = 0
    while current != 0 {
        result = result * 10 + current % 10
        current = current / 10
    }
    return result == x
}

isPalindrome(121)
