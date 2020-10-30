.class public Lorg/wikipedia/analytics/GalleryFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "GalleryFunnel.java"


# static fields
.field private static final REV_ID:I = 0x1146be8

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppMediaGallery"

.field public static final SOURCE_FEED_FEATURED_IMAGE:I = 0x3

.field public static final SOURCE_LEAD_IMAGE:I = 0x0

.field public static final SOURCE_LINK_PREVIEW:I = 0x2

.field public static final SOURCE_NON_LEAD_IMAGE:I = 0x1


# instance fields
.field private final source:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;I)V
    .locals 6

    const-string v2, "MobileWikiAppMediaGallery"

    const v3, 0x1146be8

    const/16 v4, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 22
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V

    .line 23
    iput p3, p0, Lorg/wikipedia/analytics/GalleryFunnel;->source:I

    return-void
.end method

.method private logGalleryAction(Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "pageTitle"

    aput-object v1, v0, p1

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "FeedFeaturedImage"

    :goto_0
    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/4 p1, 0x4

    const-string p2, "imageTitle"

    aput-object p2, v0, p1

    const/4 p1, 0x5

    aput-object p3, v0, p1

    .line 33
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

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

.method public logGalleryClose(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "close"

    .line 47
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/analytics/GalleryFunnel;->logGalleryAction(Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    return-void
.end method

.method public logGalleryOpen(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "open"

    .line 43
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/analytics/GalleryFunnel;->logGalleryAction(Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    return-void
.end method

.method public logGallerySave(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "save"

    .line 63
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/analytics/GalleryFunnel;->logGalleryAction(Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    return-void
.end method

.method public logGalleryShare(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "share"

    .line 59
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/analytics/GalleryFunnel;->logGalleryAction(Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    return-void
.end method

.method public logGallerySwipeLeft(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "swipeLeft"

    .line 51
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/analytics/GalleryFunnel;->logGalleryAction(Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    return-void
.end method

.method public logGallerySwipeRight(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "swipeRight"

    .line 55
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/analytics/GalleryFunnel;->logGalleryAction(Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic pause()V
    .locals 0

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->pause()V

    return-void
.end method

.method protected preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 28
    iget v0, p0, Lorg/wikipedia/analytics/GalleryFunnel;->source:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-super {p0, p1}, Lorg/wikipedia/analytics/TimedFunnel;->preprocessData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resume()V
    .locals 0

    .line 10
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->resume()V

    return-void
.end method
