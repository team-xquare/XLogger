import Foundation

public struct XLog {

    public static func network(_ any: Any, filename: String = #file, funcName: String = #function) {
        print("[🛰️Network][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
    }

    public static func info(_ any: Any, filename: String = #file, funcName: String = #function) {
        print("[ℹ️Info][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
    }
    
    public static func error(_ any: Any, filename: String = #file, funcName: String = #function) {
        print("[🚨Error][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
    }

    // MARK: - Personal Log :: Local only
    // 6기 수완's Log
    public static func martin(_ any: Any, filename: String = #file, funcName: String = #function) {
        #if DEBUG
        print("[🦍Martin][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        #endif
    }
    
    // 7기 기영's Log
    public static func hero(_ any: Any, filename: String = #file, funcName: String = #function) {
        #if DEBUG
        print("[🐈‍⬛Hero][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        #endif
    }
    
    
    // 8기 주영's Log
    public static func juy(_ any: Any, filename: String = #file, funcName: String = #function) {
        #if DEBUG
        print("[🐩Juy][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        #endif
    }
    
    
    // 8기 병진's Log
    public static func cho(_ any: Any, filename: String = #file, funcName: String = #function) {
        #if DEBUG
        print("[🥑Cho][\(sourceFileName(filePath: filename))] \(funcName) -> \(any)")
        #endif
    }

}

extension XLog {
    private static func sourceFileName(filePath: String) -> String {
        let components = filePath.components(separatedBy: "/")
        return components.isEmpty ? "" : components.last!
     }
}
