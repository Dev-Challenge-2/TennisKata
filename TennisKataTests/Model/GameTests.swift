import XCTest
@testable import TennisKata

class GameTests: XCTestCase {

    var playerOne = Player(playerName: "Player 1")
    var playerTwo = Player(playerName: "Player 2")
    var game: Game!
    
    override func setUp() {
    }

    override func tearDown() {
    }
    
    //MARK: - Test case for the score 15 - 0
    
    func testGame_GameScoreAfterPlayerOneScoresFifteen_ShouldReturnTrue() {
        //Arrange
        game = Game(firstPlayer: playerOne, secondPlayer: playerTwo)
        game.playerPlays(selectedPlayer: .playerOne)
        //Act
        let gameScore = game.score()
        //Assert
        XCTAssertTrue(gameScore == TennisKataConstants.fifteenLove, "Should return game score as Player 1 fifteen - Player 2 love")
    }
    
    //MARK: - Test case for the score 30 - 0
    
    func testGame_GameScoreAfterPlayerOneScoresThirty_ShouldReturnTrue() {
        //Arrange
        game = Game(firstPlayer: playerOne, secondPlayer: playerTwo)
        game.playerPlays(selectedPlayer: .playerOne)
        game.playerPlays(selectedPlayer: .playerOne)
        //Act
        let gameScore = game.score()
        //Arrange
        XCTAssertTrue(gameScore == TennisKataConstants.thirtyLove, "Should return game score as Player 1 thirty - Player 2 love")
    }
}
