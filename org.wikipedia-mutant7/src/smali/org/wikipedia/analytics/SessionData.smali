.class public Lorg/wikipedia/analytics/SessionData;
.super Ljava/lang/Object;
.source "SessionData.java"


# instance fields
.field private lastTouchTime:J

.field private final leadLatency:Lorg/wikipedia/util/MathUtil$Averaged;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/wikipedia/util/MathUtil$Averaged<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private pagesFromBack:I

.field private pagesFromExternal:I

.field private pagesFromHistory:I

.field private pagesFromInternal:I

.field private pagesFromLangLink:I

.field private pagesFromRandom:I

.field private pagesFromReadingList:I

.field private pagesFromSearch:I

.field private pagesFromSuggestedEdits:I

.field private pagesWithNoDescription:I

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lorg/wikipedia/util/MathUtil$Averaged;

    invoke-direct {v0}, Lorg/wikipedia/util/MathUtil$Averaged;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/analytics/SessionData;->leadLatency:Lorg/wikipedia/util/MathUtil$Averaged;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lorg/wikipedia/analytics/SessionData;->startTime:J

    .line 24
    iput-wide v0, p0, Lorg/wikipedia/analytics/SessionData;->lastTouchTime:J

    return-void
.end method


# virtual methods
.method public addLeadLatency(J)V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/wikipedia/analytics/SessionData;->leadLatency:Lorg/wikipedia/util/MathUtil$Averaged;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/util/MathUtil$Averaged;->addSample(Ljava/lang/Number;)V

    return-void
.end method

.method public addPageFromBack()V
    .locals 1

    .line 120
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromBack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromBack:I

    return-void
.end method

.method public addPageViewed(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getSource()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/16 v1, 0xb

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    .line 51
    iget p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    goto :goto_0

    .line 33
    :cond_0
    iget p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    goto :goto_0

    .line 36
    :cond_1
    iget p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    goto :goto_0

    .line 42
    :cond_2
    iget p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    goto :goto_0

    .line 39
    :cond_3
    iget p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    goto :goto_0

    .line 48
    :cond_4
    iget p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    goto :goto_0

    .line 45
    :cond_5
    iget p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    goto :goto_0

    .line 30
    :cond_6
    iget p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    :goto_0
    return-void
.end method

.method public addPageWithNoDescription()V
    .locals 1

    .line 124
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesWithNoDescription:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesWithNoDescription:I

    return-void
.end method

.method public getLastTouchTime()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lorg/wikipedia/analytics/SessionData;->lastTouchTime:J

    return-wide v0
.end method

.method public getLeadLatency()J
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/wikipedia/analytics/SessionData;->leadLatency:Lorg/wikipedia/util/MathUtil$Averaged;

    invoke-virtual {v0}, Lorg/wikipedia/util/MathUtil$Averaged;->getAverage()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public getPagesFromBack()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromBack:I

    return v0
.end method

.method public getPagesFromExternal()I
    .locals 1

    .line 96
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    return v0
.end method

.method public getPagesFromHistory()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    return v0
.end method

.method public getPagesFromInternal()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    return v0
.end method

.method public getPagesFromLangLink()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    return v0
.end method

.method public getPagesFromRandom()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    return v0
.end method

.method public getPagesFromReadingList()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    return v0
.end method

.method public getPagesFromSearch()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    return v0
.end method

.method public getPagesFromSuggestedEdits()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    return v0
.end method

.method public getPagesWithNoDescription()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesWithNoDescription:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lorg/wikipedia/analytics/SessionData;->startTime:J

    return-wide v0
.end method

.method public getTotalPages()I
    .locals 2

    .line 128
    iget v0, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSearch:I

    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromRandom:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromLangLink:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromInternal:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromExternal:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromHistory:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromReadingList:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/SessionData;->pagesFromSuggestedEdits:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setLastTouchTime(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lorg/wikipedia/analytics/SessionData;->lastTouchTime:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lorg/wikipedia/analytics/SessionData;->startTime:J

    return-void
.end method
