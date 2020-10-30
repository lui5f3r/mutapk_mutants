.class public Lorg/wikipedia/analytics/LinkPreviewFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "LinkPreviewFunnel.java"


# static fields
.field private static final PROD_LINK_PREVIEW_VERSION:I = 0x3

.field private static final REV_ID:I = 0x11ac3b6

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppLinkPreview"


# instance fields
.field private pageId:I

.field private final source:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;I)V
    .locals 3

    const-string v0, "MobileWikiAppLinkPreview"

    const v1, 0x11ac3b6

    const/4 v2, 0x1

    .line 18
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    .line 19
    iput p2, p0, Lorg/wikipedia/analytics/LinkPreviewFunnel;->source:I

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

.method public logCancel()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cancel"

    aput-object v2, v0, v1

    .line 47
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logLinkClick()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "linkclick"

    aput-object v2, v0, v1

    .line 35
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public logNavigate()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    .line 42
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isLinkPreviewEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "navigate"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 41
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

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

    const/4 v0, 0x3

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    iget v0, p0, Lorg/wikipedia/analytics/LinkPreviewFunnel;->source:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget v0, p0, Lorg/wikipedia/analytics/LinkPreviewFunnel;->pageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "page_id"

    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/analytics/Funnel;->preprocessData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
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

.method public setPageId(I)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/wikipedia/analytics/LinkPreviewFunnel;->pageId:I

    return-void
.end method
