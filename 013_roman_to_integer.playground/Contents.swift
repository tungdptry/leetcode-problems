
func romanToInt(_ s: String) -> Int {
    var dict: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    var value = 0
    let chars = Array(s)
    for i in 0..<chars.count {
        if i == chars.count - 1 {
            value += dict[chars[i]]!
        } else if dict[chars[i]]! >= dict[chars[i + 1]]! {
            value += dict[chars[i]]!
        } else {
            value -= dict[chars[i]]!
        }
    }
    return value
}

romanToInt("XIV")
