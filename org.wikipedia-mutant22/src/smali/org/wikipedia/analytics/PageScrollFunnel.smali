.class public Lorg/wikipedia/analytics/PageScrollFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "PageScrollFunnel.java"


# static fields
.field private static final REV_ID:I = 0x1147843

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppPageScroll"


# instance fields
.field private maxScrollY:I

.field private pageHeight:I

.field private final pageId:I

.field private scrollFluxDown:I

.field private scrollFluxUp:I

.field private viewportHeight:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;I)V
    .locals 3

    .line 22
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isProdRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "MobileWikiAppPageScroll"

    const v2, 0x1147843

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    .line 23
    iput p2, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->pageId:I

    return-void
.end method

.method private getMaxPercentViewed()I
    .locals 4

    .line 59
    iget v0, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->pageHeight:I

    const/16 v1, 0x64

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->maxScrollY:I

    iget v3, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->viewportHeight:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v0, v2, v0

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 10
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

    .line 48
    iget v1, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->pageId:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "pageHeight"

    aput-object v2, v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->pageHeight:I

    int-to-float v1, v1

    .line 50
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "scrollFluxDown"

    aput-object v2, v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->scrollFluxDown:I

    int-to-float v1, v1

    .line 51
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-string v2, "scrollFluxUp"

    aput-object v2, v0, v1

    iget v1, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->scrollFluxUp:I

    int-to-float v1, v1

    .line 52
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    const-string v2, "maxPercentViewed"

    aput-object v2, v0, v1

    .line 53
    invoke-direct {p0}, Lorg/wikipedia/analytics/PageScrollFunnel;->getMaxPercentViewed()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 48
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public onPageScrolled(IIZ)V
    .locals 0

    if-eqz p3, :cond_1

    if-le p2, p1, :cond_0

    .line 31
    iget p3, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->scrollFluxDown:I

    sub-int p1, p2, p1

    add-int/2addr p3, p1

    iput p3, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->scrollFluxDown:I

    goto :goto_0

    .line 33
    :cond_0
    iget p3, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->scrollFluxUp:I

    sub-int/2addr p1, p2

    add-int/2addr p3, p1

    iput p3, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->scrollFluxUp:I

    .line 36
    :cond_1
    :goto_0
    iget p1, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->maxScrollY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->maxScrollY:I

    return-void
.end method

.method public bridge synthetic pause()V
    .locals 0

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->pause()V

    return-void
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume()V
    .locals 0

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->resume()V

    return-void
.end method

.method public setPageHeight(I)V
    .locals 1

    int-to-float p1, p1

    .line 40
    invoke-static {}, Lorg/wikipedia/util/DimenUtil;->getDensityScalar()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->pageHeight:I

    return-void
.end method

.method public setViewportHeight(I)V
    .locals 0

    .line 44
    iput p1, p0, Lorg/wikipedia/analytics/PageScrollFunnel;->viewportHeight:I

    return-void
.end method
