.class public final Lorg/wikipedia/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static DATE_FORMATS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized dbDateFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/wikipedia/util/DateUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "yyyyMMddHHmmss"

    .line 42
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/wikipedia/util/DateUtil;->getCachedDateFormat(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized dbDateParse(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-class v0, Lorg/wikipedia/util/DateUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "yyyyMMddHHmmss"

    .line 46
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/wikipedia/util/DateUtil;->getCachedDateFormat(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static get24HrFormatTimeOnlyString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "kk:mm"

    .line 133
    invoke-static {p0, v0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCachedDateFormat(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/text/SimpleDateFormat;
    .locals 1

    .line 90
    sget-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-eqz p2, :cond_0

    const-string p1, "UTC"

    .line 93
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    :cond_0
    sget-object p1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    sget-object p1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private static declared-synchronized getDateStringWithSkeletonPattern(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lorg/wikipedia/util/DateUtil;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/wikipedia/util/DateUtil;->getCachedDateFormat(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getDaysAgoString(I)Ljava/lang/String;
    .locals 5

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_0

    .line 171
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance()Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    int-to-double v1, p0

    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 167
    :cond_0
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance()Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 165
    :cond_1
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance()Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_2
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance()Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_3
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p0, :cond_4

    .line 176
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100460

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 177
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f001c

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDefaultDateFor(I)Ljava/util/Calendar;
    .locals 2

    .line 115
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    neg-int p0, p0

    const/4 v1, 0x5

    .line 116
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method private static getExtraShortDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "MMM d"

    .line 82
    invoke-static {p0, v0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFeedCardDateString(I)Ljava/lang/String;
    .locals 1

    .line 54
    new-instance v0, Lorg/wikipedia/feed/model/UtcDate;

    invoke-direct {v0, p0}, Lorg/wikipedia/feed/model/UtcDate;-><init>(I)V

    invoke-virtual {v0}, Lorg/wikipedia/feed/model/UtcDate;->baseCalendar()Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->getFeedCardDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFeedCardDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFeedCardDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFeedCardDayHeaderDate(I)Ljava/lang/String;
    .locals 1

    .line 50
    new-instance v0, Lorg/wikipedia/feed/model/UtcDate;

    invoke-direct {v0, p0}, Lorg/wikipedia/feed/model/UtcDate;-><init>(I)V

    invoke-virtual {v0}, Lorg/wikipedia/feed/model/UtcDate;->baseCalendar()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    const-string v0, "EEEE MMM d"

    invoke-static {p0, v0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFeedCardShortDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->getExtraShortDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getHttpLastModifiedDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/wikipedia/util/DateUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 125
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/wikipedia/util/DateUtil;->getCachedDateFormat(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getHttpLastModifiedDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-class v0, Lorg/wikipedia/util/DateUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 121
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/wikipedia/util/DateUtil;->getCachedDateFormat(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getMDYDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "MM/dd/yyyy"

    .line 70
    invoke-static {p0, v0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMonthOnlyDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "MMMM d"

    .line 74
    invoke-static {p0, v0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMonthOnlyWithoutDayDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "MMMM"

    .line 78
    invoke-static {p0, v0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReadingListsLastSyncDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 129
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    const-string v0, "d MMM yyyy HH:mm"

    invoke-static {p0, v0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 105
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    const-string v1, "UTC"

    .line 106
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 107
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUtcRequestDateFor(I)Lorg/wikipedia/feed/model/UtcDate;
    .locals 1

    .line 111
    new-instance v0, Lorg/wikipedia/feed/model/UtcDate;

    invoke-direct {v0, p0}, Lorg/wikipedia/feed/model/UtcDate;-><init>(I)V

    return-object v0
.end method

.method public static getYearDifferenceString(I)Ljava/lang/String;
    .locals 5

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p0

    .line 143
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p0, v2, :cond_3

    const/4 p0, -0x1

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 152
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance()Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    int-to-double v0, v0

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance()Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :cond_1
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance()Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :cond_2
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance()Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_3
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez v0, :cond_4

    const v0, 0x7f100446

    .line 156
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v2, 0x7f0f0000

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized iso8601DateFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/wikipedia/util/DateUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 30
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/wikipedia/util/DateUtil;->getCachedDateFormat(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-class v0, Lorg/wikipedia/util/DateUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 34
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/wikipedia/util/DateUtil;->getCachedDateFormat(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized iso8601LocalDateFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/wikipedia/util/DateUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 38
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/wikipedia/util/DateUtil;->getCachedDateFormat(Ljava/lang/String;Ljava/util/Locale;Z)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static yearToStringWithEra(I)Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 138
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    if-gez p0, :cond_0

    const-string p0, "y GG"

    goto :goto_0

    :cond_0
    const-string p0, "y"

    :goto_0
    invoke-static {v0, p0}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
