import Foundation

public extension Date {
    /// 驱动model 获取年月日时分秒……
    public var JRModel: JRDateModel { return JRDateModel.init(by: self) }
    
    /// date转yyyy-MM-dd HH:mm:ss格式string
    public var JRString: String { return JRString() }
    
    /// date转自定义格式string 默认格式yyyy-MM-dd HH:mm:ss
    public func JRString(formatter: String = JRDateModel.JRDateNormalFormatter) -> String {
        return JRModel.JRStringDate(format: formatter)
    }
}
