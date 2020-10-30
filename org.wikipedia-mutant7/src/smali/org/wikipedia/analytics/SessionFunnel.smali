.class public Lorg/wikipedia/analytics/SessionFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "SessionFunnel.java"


# static fields
.field public static final DEFAULT_SESSION_TIMEOUT:I = 0x1e

.field public static final MIN_SESSION_TIMEOUT:I = 0x1

.field private static final REVISION:I = 0x12ee9a3

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppSessions"


# instance fields
.field private leadSectionStartTime:J

.field private sessionData:Lorg/wikipedia/analytics/SessionData;


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;)V
    .locals 4

    const-string v0, "MobileWikiAppSessions"

    const v1, 0x12ee9a3

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;I)V

    .line 26
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSessionData()Lorg/wikipedia/analytics/SessionData;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 27
    invoke-virtual {p1}, Lorg/wikipedia/analytics/SessionData;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    invoke-virtual {p1}, Lorg/wikipedia/analytics/SessionData;->getLastTouchTime()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 29
    :cond_0
    new-instance p1, Lorg/wikipedia/analytics/SessionData;

    invoke-direct {p1}, Lorg/wikipedia/analytics/SessionData;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/analytics/SessionFunnel;->persistSession()V

    .line 32
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/analytics/SessionFunnel;->touchSession()V

    return-void
.end method

.method private hasTimedOut()Z
    .locals 6

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    invoke-virtual {v2}, Lorg/wikipedia/analytics/SessionData;->getLastTouchTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 83
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getSessionTimeout()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logSessionData()V
    .locals 5

    .line 87
    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getLastTouchTime()J

    move-result-wide v0

    iget-object v2, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    invoke-virtual {v2}, Lorg/wikipedia/analytics/SessionData;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const/16 v2, 0x1e

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "length"

    aput-object v4, v2, v3

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-string v3, "fromSearch"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 90
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getPagesFromSearch()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    const-string v3, "fromRandom"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 91
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getPagesFromRandom()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const/4 v0, 0x6

    const-string v3, "fromLanglink"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 92
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getPagesFromLangLink()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    const/16 v0, 0x8

    const-string v3, "fromInternal"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 93
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getPagesFromInternal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v2, v3

    const/16 v0, 0xa

    const-string v3, "fromExternal"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 94
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getPagesFromExternal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, v2, v3

    const/16 v0, 0xc

    const-string v3, "fromHistory"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 95
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getPagesFromHistory()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0xd

    aput-object v0, v2, v3

    const/16 v0, 0xe

    const-string v3, "fromReadingList"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 96
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getPagesFromReadingList()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0xf

    aput-object v0, v2, v3

    const/16 v0, 0x10

    const-string v3, "fromBack"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 97
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getPagesFromBack()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x11

    aput-object v0, v2, v3

    const/16 v0, 0x12

    const-string v3, "noDescription"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 98
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getPagesWithNoDescription()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x13

    aput-object v0, v2, v3

    const/16 v0, 0x14

    const-string v3, "fromSuggestedEdits"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 99
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getPagesFromSuggestedEdits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x15

    aput-object v0, v2, v3

    const/16 v0, 0x16

    const-string v3, "totalPages"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 100
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getTotalPages()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x17

    aput-object v0, v2, v3

    const/16 v0, 0x18

    const-string v3, "pageLoadLatency"

    aput-object v3, v2, v0

    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 101
    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->getLeadLatency()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v3, 0x19

    aput-object v0, v2, v3

    const/16 v0, 0x1a

    const-string v3, "languages"

    aput-object v3, v2, v0

    .line 102
    invoke-virtual {p0}, Lorg/wikipedia/analytics/Funnel;->getApp()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->listToJsonArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b

    aput-object v0, v2, v3

    const/16 v0, 0x1c

    const-string v3, "apiMode"

    aput-object v3, v2, v0

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1d

    aput-object v0, v2, v1

    .line 88
    invoke-virtual {p0, v2}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public backPressed()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/wikipedia/analytics/SessionFunnel;->touchSession()V

    .line 65
    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->addPageFromBack()V

    return-void
.end method

.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public leadSectionFetchEnd()V
    .locals 5

    .line 78
    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/wikipedia/analytics/SessionFunnel;->leadSectionStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/analytics/SessionData;->addLeadLatency(J)V

    return-void
.end method

.method public leadSectionFetchStart()V
    .locals 2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->leadSectionStartTime:J

    return-void
.end method

.method public noDescription()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/wikipedia/analytics/SessionFunnel;->touchSession()V

    .line 70
    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    invoke-virtual {v0}, Lorg/wikipedia/analytics/SessionData;->addPageWithNoDescription()V

    return-void
.end method

.method public pageViewed(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/wikipedia/analytics/SessionFunnel;->touchSession()V

    .line 60
    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    invoke-virtual {v0, p1}, Lorg/wikipedia/analytics/SessionData;->addPageViewed(Lorg/wikipedia/history/HistoryEntry;)V

    return-void
.end method

.method public persistSession()V
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSessionData(Lorg/wikipedia/analytics/SessionData;)V

    return-void
.end method

.method public touchSession()V
    .locals 3

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    invoke-direct {p0}, Lorg/wikipedia/analytics/SessionFunnel;->hasTimedOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-direct {p0}, Lorg/wikipedia/analytics/SessionFunnel;->logSessionData()V

    .line 52
    new-instance v2, Lorg/wikipedia/analytics/SessionData;

    invoke-direct {v2}, Lorg/wikipedia/analytics/SessionData;-><init>()V

    iput-object v2, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 53
    invoke-virtual {p0}, Lorg/wikipedia/analytics/SessionFunnel;->persistSession()V

    .line 55
    :cond_0
    iget-object v2, p0, Lorg/wikipedia/analytics/SessionFunnel;->sessionData:Lorg/wikipedia/analytics/SessionData;

    invoke-virtual {v2, v0, v1}, Lorg/wikipedia/analytics/SessionData;->setLastTouchTime(J)V

    return-void
.end method
