.class public Lorg/wikipedia/analytics/DailyStatsFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "DailyStatsFunnel.java"


# static fields
.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppDailyStats"

.field private static final SCHEMA_REVISION:I = 0x1146a1d


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;)V
    .locals 3

    const-string v0, "MobileWikiAppDailyStats"

    const v1, 0x1146a1d

    const/4 v2, 0x1

    .line 21
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    return-void
.end method

.method private getAbsoluteTime()J
    .locals 2

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getInstallAge(Landroid/content/Context;)J
    .locals 4

    .line 37
    invoke-direct {p0}, Lorg/wikipedia/analytics/DailyStatsFunnel;->getAbsoluteTime()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lorg/wikipedia/analytics/DailyStatsFunnel;->getInstallTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getInstallAgeDays(Landroid/content/Context;)J
    .locals 3

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1}, Lorg/wikipedia/analytics/DailyStatsFunnel;->getInstallAge(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getInstallTime(Landroid/content/Context;)J
    .locals 2

    .line 43
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public log(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "appInstallAgeDays"

    aput-object v2, v0, v1

    .line 25
    invoke-direct {p0, p1}, Lorg/wikipedia/analytics/DailyStatsFunnel;->getInstallAgeDays(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v2, "languages"

    aput-object v2, v0, p1

    .line 26
    invoke-virtual {p0}, Lorg/wikipedia/analytics/Funnel;->getApp()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->listToJsonArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v0, v2

    const/4 p1, 0x4

    const-string v2, "is_anon"

    aput-object v2, v0, p1

    .line 27
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 25
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
