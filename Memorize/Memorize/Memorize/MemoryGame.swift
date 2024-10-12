//
//  MemorizeGame.swift
//  Memorize
//
//  Created by admin on 2024/10/12.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        
        // add numberOfPairsOfCards x 2 cards
        for parIndex in 0..<max(2,numberOfPairsOfCards) {
            let content: CardContent = cardContentFactory(parIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    mutating func shuffle() {
        cards.shuffle()
        print(cards)
    }
    
    //card
    struct Card {
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
    }
}
