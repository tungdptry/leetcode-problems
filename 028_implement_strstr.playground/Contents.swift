
func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty {
        return 0
    }
    let chars = Array(haystack)
    let first = needle.first!
    var i = 0
    let max = chars.count - needle.count
    while i <= max {
        while i <= max && chars[i] != first {
            i += 1
        }
        if i <= max && String(chars[i..<(i + needle.count)]) == needle {
            return i
        }
        i += 1
    }
    return -1
}

strStr("hlello", "ll")
