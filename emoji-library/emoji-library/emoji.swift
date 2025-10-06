//
//  emoji.swift
//  emoji-library
//
//  Created by SDC-USER on 06/10/25.
//

struct Emoji {
    var symbol: String
    var name: String
    var description: String
    var usage: String
}

var emojis: [Emoji] = [
    Emoji(symbol: "😂", name: "Laugh", description: "Laughing Face", usage: "To show laughter"),
    Emoji(symbol: "😭", name: "Cry", description: "Crying Face", usage: "To show crying"),
    Emoji(symbol: "🙂", name: "Super Angry", description: "Super Angry Face", usage: "To show super angry"),
    Emoji(symbol: "🥺", name: "Manipulate", description: "Manipulating Face", usage: "To show manipulation"),
]
