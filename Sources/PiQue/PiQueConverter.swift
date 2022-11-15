import Foundation

public final class PiQueConverter {
    
    // MARK: - Constructor -
    
    ///
    /// Default constructor.
    /// 
    public init() {}
    
    // MARK: - Public methods -
    
    /// Try converting the initial value to the target value.
    ///
    /// - Parameters:
    ///     - initial: The *initial* string to be converted.
    ///     - target: The *target* string the *initial* value to be compared to.
    ///     - completion: The **completion handler** that passes the result to its caller.
    ///
    public func tryConverting(initial: String, to target: String, completion: @escaping (Bool) -> Void) {
        
        let result = isConverting(initial: initial, target: target)
        completion(result)
    }
    
    
    // MARK: - Private methods -
    
    ///Recursive function to try converting the initial value to the target value.
    ///
    /// - Parameters:
    ///     - initial: The *initial* string to be converted.
    ///     - target: The *target* string the *initial* value to be compared to.
    ///
    /// - Returns: A boolean result of the attempted conversion.
    private func isConverting(initial: String, target: String) -> Bool {

        // If both strings are equal, the conversion is successful.
        if initial == target {
            return true
        }

        // If the initial string is longer than the target, the conversion failed.
        if initial.count >= target.count {
            return false
        }
        
        // Apply the "P" and the "Q" rules.
        let appendP = initial.appendP
        let appendQ = initial.appendQ
        
        // Perform recursive check for conversion.
        return isConverting(initial: appendP, target: target) || isConverting(initial: appendQ, target: target)
    }
    
}
