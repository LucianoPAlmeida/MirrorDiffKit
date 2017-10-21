#if os(Linux)
// XXX: This is a fake implementation for Linux.
public struct CGFloat<T> {
    let value: Double

    init(_ value: Double) {
        self.value = value
    }
}

extension CGFloat: Hashable {
    public var hashValue: Int {
        return self.value.hashValue
    }

    public static func ==(lhs: CGFloat, rhs: CGFloat) -> Bool {
        return lhs.value == rhs.value
    }
}

extension CGFloat: CustomStringConvertible {
    public var description: String {
        return "\(self.value)"
    }
}
#else
import CoreGraphics
#endif


public struct LinuxCompatibleCGFloat {
    let value: CGFloat


    init(_ value: CGFloat) {
        self.value = value
    }
}



extension LinuxCompatibleCGFloat /* : CustomStringConvertible */ {
    var description: String {
        return "\(self.value)"
    }
}



extension LinuxCompatibleCGFloat: Hashable {
    public var hashValue: Int {
        return self.value.hashValue
    }

    public static func ==(lhs: LinuxCompatibleCGFloat, rhs: LinuxCompatibleCGFloat) -> Bool {
        return lhs.value == rhs.value
    }
}
