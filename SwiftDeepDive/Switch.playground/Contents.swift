import UIKit





func loveCalculator(){
    
    let loveScore = Int.random(in: 0...100)
    
    switch loveScore {
    case 80...:
        print("you love each other like kanye loves kanye")
    case 40..<80:
        print("you go together like coke and mentos")
    case ..<40:
        print("you will be forever alone")
    default:
        print("errors")
    }
}


loveCalculator()

// a...b                    a b araalığında demek kapalı aralık
// a..<b                    a b b açık aralık demek
// ...b                     b ye kadar demek b kapalı aralık






