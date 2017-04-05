# JRDate
```swift
    -   JRModel         驱动model 获取年月日时分秒……
        -   JREra                   纪元-公元前(B.C.E.)/公元(C.E.)
		-   JRYear                  年份
		-   JRMonth                 月份
		-   JRWeekOfYear            一年中的第几周
		-   JRWeekOfMonth           一月中的第几周
		-   JRDayOfYear             一年中的第几天
		-   JRDayOfMonth            一月中的第几天(几号)
		-   JRWeekday               周几
		-   JRAMPM                  上午(AM)/下午(PM)
		-   JRHourHH                时 24小时制
		-   JRHourhh                时 12小时制
		-   JRMinute                分
		-   JRSecond                秒
		-   JRMillisecond           毫秒
		-   JRTimezone              时区-GMT+08:00
		-   JRTimeZone              时区-+0800
		-   JRSysDateStringValue    yyyy-MM-dd HH:mm:ss
	-   JRString        date转yyyy-MM-dd HH:mm:ss格式string
	-   JRString(formatter: String = JRDateModel.JRDateNormalFormatter) date转自定义格式string 默认格式yyyy-MM-dd HH:mm:ss
	-   JRDate          将yyyy-MM-dd HH:mm:ss格式string转为date 格式错误返回当前时间
	-   JRDate(by format: String = default_date_format) 将string转为自定义格式的date 格式不匹配返回nil
```
