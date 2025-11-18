//
//  EmojiStruct.swift
//  intermediate-table
//
//  Created by SDC-USER on 29/10/25.
//

struct Emojis {
    var symbol: String
    var name: String
    var description: String
}

// Correctly initialize the array with Emojis instances (not a tuple)
var emojis: [Emojis] = [
    Emojis(symbol: "😀", name: "Smile", description: "Smiling Face"),
    Emojis(symbol: "😎", name: "Cool", description: "Aura Face")
]
