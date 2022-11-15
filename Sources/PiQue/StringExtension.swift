import Foundation

internal extension String {
    
    /// Append "P" to the string.
    var appendP: String {
        return self.appending("P")
    }
    
    /// Append "Q" to the string reversed.
    var appendQ: String {
        return String(self.reversed()).appending("Q")
    }
}
