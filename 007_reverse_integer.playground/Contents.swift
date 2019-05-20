
func reverse(_ x: Int) -> Int {
    
    let absX = x >= 0 ? x : -x
    var result = 0
    var current = absX
    while current > 0 {
        result = result * 10 + current % 10 // 321
        current = current / 10 // 0
    }
    if result > Int32.max || result < Int32.min {
        return 0
    }
    return x >= 0 ? result : -result
    
}

reverse(1534236469)
