/// A model representing an Emoji with its symbol, name, description, and optional usage.
/// 
/// This model is used by EmojiTableViewCell to display emoji information.
/// 
/// Conforms to `Codable` and `Equatable` protocols for easy encoding, decoding, and comparison.
public struct Emoji: Codable, Equatable {
    
    /// The emoji character symbol.
    public let symbol: String
    
    /// The name of the emoji.
    public let name: String
    
    /// A description of the emoji.
    public let description: String
    
    /// An optional usage example or context for the emoji.
    public let usage: String?
    
    /// Creates a new Emoji instance.
    /// - Parameters:
    ///   - symbol: The emoji character symbol.
    ///   - name: The name of the emoji.
    ///   - description: A description of the emoji.
    ///   - usage: An optional usage example or context for the emoji.
    public init(symbol: String, name: String, description: String, usage: String? = nil) {
        self.symbol = symbol
        self.name = name
        self.description = description
        self.usage = usage
    }
}
