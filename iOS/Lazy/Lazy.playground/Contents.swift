import UIKit

/** LAZY  */


struct Calculator{
    
    static func calculategamesPlayed()-> Int{
        var games: [Int] = []
        for i in 1...4_000{
            
            print ("here")
            games.append(i) }
        return games.last!
    }
    
    
}

struct Player{
    var name: String
    var team: String
    var position: String
    lazy var gamesPlayed = { return
        Calculator.calculategamesPlayed()
    }()
    
    lazy var introduction = {
       return "Now entering teh game : \(name), \(position) for the  \(team)"
    }()
}

var jordan  = Player(name: "Miachel Jordan", team: "Bulls", position: "Soothing Guard")

print(jordan.introduction)


// cuando se pone lazy se espera hasta que se llame la propiedad, si no le pones lazy inicializa solita
jordan.gamesPlayed

