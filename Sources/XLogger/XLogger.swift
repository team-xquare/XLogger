import Foundation

public struct XLog {

    public static func network(_ any: Any, filename: String = #file, funcName: String = #function) {
        print("\n\n")
        print("[🛰️Network][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        print("\n\n")
    }

    public static func info(_ any: Any, filename: String = #file, funcName: String = #function) {
        print("\n\n")
        print("[ℹ️Info][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        print("\n\n")
    }
    
    public static func error(_ any: Any, filename: String = #file, funcName: String = #function) {
        print("\n\n")
        print("[🚨Error][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        print("\n\n")
    }

    // MARK: - Personal Log :: Local only
    // 6기 수완's Log
    public static func martin(_ any: Any, filename: String = #file, funcName: String = #function) {
        #if DEBUG
        print("\n")
        print("[🦍Martin][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        print("\n")
        #endif
    }
    
    // 7기 기영's Log
    public static func hero(_ any: Any, filename: String = #file, funcName: String = #function) {
        #if DEBUG
        print("\n")
        print("[🐈‍⬛Hero][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        print("\n")
        #endif
    }
    
    
    // 8기 주영's Log
    public static func juy(_ any: Any, filename: String = #file, funcName: String = #function) {
        #if DEBUG
        print("\n")
        print("[🐩Juy][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        print("\n")
        #endif
    }
    
    
    // 8기 병진's Log
    public static func cho(_ any: Any, filename: String = #file, funcName: String = #function) {
        #if DEBUG
        print("\n")
        print("[🥑Cho][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        print("\n")
        #endif
    }

}

extension XLog {
    private static func sourceFileName(filePath: String) -> String {
        let components = filePath.components(separatedBy: "/")
        return components.isEmpty ? "" : components.last!
     }
}
