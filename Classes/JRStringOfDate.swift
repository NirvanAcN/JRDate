import Foundation

public extension String {
    public static let default_date_format = "yyyy-MM-dd HH:mm:ss"
    
    /// 将yyyy-MM-dd HH:mm:ss格式string转为date 格式错误返回当前时间
    public var JRDate: Date {
        guard let output = JRDate() else { return Date() }
        return output
    }
    
    /// 将string转为自定义格式的date 格式不匹配返回nil
    public func JRDate(by format: String = default_date_format) -> Date? {
        let inputFormatter = DateFormatter()
        inputFormatter.locale = NSLocale.system
        inputFormatter.dateFormat = format
        let output = inputFormatter.date(from: self)
        return output
    }
}
