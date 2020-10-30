.class public Lorg/wikipedia/analytics/ToCInteractionFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "ToCInteractionFunnel.java"


# static fields
.field private static final REV_ID:I = 0x12299f5

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppToCInteraction"


# instance fields
.field private lastScrollStartMillis:J

.field private numOpens:I

.field private numSectionClicks:I

.field private final numSections:I

.field private final pageId:I

.field private totalOpenedSec:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;II)V
    .locals 6

    const-string v2, "MobileWikiAppToCInteraction"

    const v3, 0x12299f5

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 25
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V

    .line 26
    iput p3, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->pageId:I

    .line 27
    iput p4, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->numSections:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public log()V
    .locals 4

    .line 58
    invoke-virtual {p0}, Lorg/wikipedia/analytics/ToCInteractionFunnel;->scrollStop()V

    .line 59
    iget v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->numSections:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->numOpens:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "num_peeks"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "num_opens"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    iget v3, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->numOpens:I

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "num_section_clicks"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    iget v3, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->numSectionClicks:I

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "total_peek_sec"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "total_open_sec"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->totalOpenedSec:I

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public logClick()V
    .locals 1

    .line 54
    iget v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->numSectionClicks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->numSectionClicks:I

    return-void
.end method

.method protected preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 32
    iget v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->pageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "page_id"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    iget v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->numSections:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "num_sections"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    invoke-super {p0, p1}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public scrollStart()V
    .locals 2

    .line 40
    iget v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->numOpens:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->numOpens:I

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->lastScrollStartMillis:J

    return-void
.end method

.method public scrollStop()V
    .locals 9

    .line 45
    iget-wide v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->lastScrollStartMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 48
    :cond_0
    iget v0, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->totalOpenedSec:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->lastScrollStartMillis:J

    sub-long/2addr v4, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    div-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v1, v0

    iput v1, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->totalOpenedSec:I

    .line 49
    iput-wide v2, p0, Lorg/wikipedia/analytics/ToCInteractionFunnel;->lastScrollStartMillis:J

    return-void
.end method
