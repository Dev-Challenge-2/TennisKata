import Foundation

class Player {
    
    private(set) var name: String
    private(set) var score: Int
    
    init(playerName: String) {
        name = playerName
        score = 0
    }
}