import UIKit

open class JRDateModel: NSObject {
    public static let JRDateNormalFormatter = nAllDateFormatters.normal.rawValue
    
    fileprivate enum nAllDateFormatters: String {
        case G, yyyy, MM, w, W, D, dd, E, a, HH, hh, KK, kk, mm, ss, SSS, z, Z
        case normal = "yyyy-MM-dd HH:mm:ss"
        
        fileprivate var dateValue: String { return nTransDate() }
        
        fileprivate func nTransDate() -> String {
            return JRDateModel.nCommon(by: rawValue)
        }
    }
    fileprivate typealias nD = nAllDateFormatters
    
    private static var nDate = Date()
    
    private override init() {}
    public convenience init(by date: Date) {
        self.init()
        JRDateModel.nDate = date
    }
    
    public func JRStringDate(date: Date = JRDateModel.nDate, format: String) -> String {
        return JRDateModel.nCommon(by: format)
    }
    
    private static func nCommon(by format: String, date: Date = JRDateModel.nDate) -> String {
        let formatter = DateFormatter()
        formatter.locale = NSLocale.system
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
}

public extension JRDateModel {
    /// 纪元-公元前(B.C.E.)/公元(C.E.)
    public var JREra: String { return nD.G.dateValue }
    
    /// 年份
    public var JRYear: String { return nD.yyyy.dateValue }
    
    /// 月份
    public var JRMonth: String { return nD.MM.dateValue }
    
    /// 一年中的第几周
    public var JRWeekOfYear: String { return nD.w.dateValue }
    
    /// 一月中的第几周
    public var JRWeekOfMonth: String { return nD.W.dateValue }
    
    /// 一年中的第几天
    public var JRDayOfYear: String { return nD.D.dateValue }
    
    /// 一月中的第几天(几号)
    public var JRDayOfMonth: String { return nD.dd.dateValue }
    
    /// 周几
    public var JRWeekday: String { return nD.E.dateValue }
    
    /// 上午(AM)/下午(PM)
    public var JRAMPM: String { return nD.a.dateValue }
    
    /// 时 24小时制
    public var JRHourHH: String { return nD.HH.dateValue }
    
    /// 时 12小时制
    public var JRHourhh: String { return nD.hh.dateValue }
    
    /// 分
    public var JRMinute: String { return nD.mm.dateValue }
    
    /// 秒
    public var JRSecond: String { return nD.ss.dateValue }
    
    /// 毫秒
    public var JRMillisecond: String { return nD.SSS.dateValue }
    
    /// 时区-GMT+08:00
    public var JRTimezone: String { return nD.z.dateValue }
    
    /// 时区-+0800
    public var JRTimeZone: String { return nD.Z.dateValue }
    
    /// yyyy-MM-dd HH:mm:ss
    public var JRSysDateStringValue: String { return nD.normal.dateValue }
}
