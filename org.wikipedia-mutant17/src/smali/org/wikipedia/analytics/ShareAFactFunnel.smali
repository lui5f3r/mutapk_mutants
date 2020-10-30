.class public Lorg/wikipedia/analytics/ShareAFactFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "ShareAFactFunnel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x63

.field private static final REV_ID:I = 0x114dd52

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppShareAFact"


# instance fields
.field private final pageId:I

.field private final pageTitle:Ljava/lang/String;

.field private final revisionId:J


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/page/PageTitle;IJ)V
    .locals 3

    .line 25
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    const-string v1, "MobileWikiAppShareAFact"

    const v2, 0x114dd52

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;ILorg/wikipedia/dataclient/WikiSite;)V

    .line 26
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/analytics/ShareAFactFunnel;->pageTitle:Ljava/lang/String;

    .line 27
    iput p3, p0, Lorg/wikipedia/analytics/ShareAFactFunnel;->pageId:I

    .line 28
    iput-wide p4, p0, Lorg/wikipedia/analytics/ShareAFactFunnel;->revisionId:J

    return-void
.end method

.method private logAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/analytics/ShareAFactFunnel;->logAction(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;)V

    return-void
.end method

.method private logAction(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 v1, 0x63

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "action"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    const-string v0, "article"

    aput-object v0, v1, p1

    const/4 p1, 0x3

    .line 42
    iget-object v0, p0, Lorg/wikipedia/analytics/ShareAFactFunnel;->pageTitle:Ljava/lang/String;

    aput-object v0, v1, p1

    const/4 p1, 0x4

    const-string v0, "page_id"

    aput-object v0, v1, p1

    const/4 p1, 0x5

    iget v0, p0, Lorg/wikipedia/analytics/ShareAFactFunnel;->pageId:I

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x6

    const-string v0, "rev_id"

    aput-object v0, v1, p1

    const/4 p1, 0x7

    iget-wide v2, p0, Lorg/wikipedia/analytics/ShareAFactFunnel;->revisionId:J

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, p1

    const/16 p1, 0x8

    const-string v0, "text"

    aput-object v0, v1, p1

    const/16 p1, 0x9

    aput-object p2, v1, p1

    const/16 p1, 0xa

    const-string p2, "share_mode"

    aput-object p2, v1, p1

    const/16 p1, 0xb

    aput-object p3, v1, p1

    .line 42
    invoke-virtual {p0, v1}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logAbandoned(Ljava/lang/String;)V
    .locals 1

    const-string v0, "abandoned"

    .line 75
    invoke-direct {p0, v0, p1}, Lorg/wikipedia/analytics/ShareAFactFunnel;->logAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logHighlight()V
    .locals 2

    const-string v0, "highlight"

    const-string v1, ""

    .line 58
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/analytics/ShareAFactFunnel;->logAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logShareIntent(Ljava/lang/String;Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;)V
    .locals 1

    const-string v0, "shareintent"

    .line 68
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/analytics/ShareAFactFunnel;->logAction(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/analytics/ShareAFactFunnel$ShareMode;)V

    return-void
.end method

.method public logShareTap(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sharetap"

    .line 63
    invoke-direct {p0, v0, p1}, Lorg/wikipedia/analytics/ShareAFactFunnel;->logAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "tutorial_feature_enabled"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "tutorial_shown"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-super {p0, p1}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
