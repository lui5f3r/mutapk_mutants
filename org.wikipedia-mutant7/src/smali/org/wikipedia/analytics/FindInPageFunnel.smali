.class public Lorg/wikipedia/analytics/FindInPageFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "FindInPageFunnel.java"


# static fields
.field private static final REV_ID:I = 0x12c74af

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppFindInPage"


# instance fields
.field private findText:Ljava/lang/String;

.field private numFindNext:I

.field private numFindPrev:I

.field private pageHeight:I

.field private final pageId:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;I)V
    .locals 6

    const-string v2, "MobileWikiAppFindInPage"

    const v3, 0x12c74af

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 20
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V

    .line 21
    iput p3, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->pageId:I

    return-void
.end method


# virtual methods
.method public addFindNext()V
    .locals 1

    .line 31
    iget v0, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->numFindNext:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->numFindNext:I

    return-void
.end method

.method public addFindPrev()V
    .locals 1

    .line 35
    iget v0, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->numFindPrev:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->numFindPrev:I

    return-void
.end method

.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logDone()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "pageID"

    aput-object v2, v0, v1

    .line 43
    iget v1, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->pageId:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "numFindNext"

    aput-object v2, v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->numFindNext:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "numFindPrev"

    aput-object v2, v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->numFindPrev:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-string v2, "findText"

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->findText:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    const-string v2, "pageHeight"

    aput-object v2, v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->pageHeight:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 43
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic pause()V
    .locals 0

    .line 9
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->pause()V

    return-void
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume()V
    .locals 0

    .line 9
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->resume()V

    return-void
.end method

.method public setFindText(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->findText:Ljava/lang/String;

    return-void
.end method

.method public setPageHeight(I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/wikipedia/analytics/FindInPageFunnel;->pageHeight:I

    return-void
.end method
