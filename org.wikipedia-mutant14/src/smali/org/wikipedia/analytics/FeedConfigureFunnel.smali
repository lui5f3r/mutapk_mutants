.class public Lorg/wikipedia/analytics/FeedConfigureFunnel;
.super Lorg/wikipedia/analytics/TimedFunnel;
.source "FeedConfigureFunnel.java"


# static fields
.field private static final REV_ID:I = 0x135bb4a

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppFeedConfigure"


# instance fields
.field private final source:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/dataclient/WikiSite;I)V
    .locals 6

    const-string v2, "MobileWikiAppFeedConfigure"

    const v3, 0x135bb4a

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 24
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/TimedFunnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;IILorg/wikipedia/dataclient/WikiSite;)V

    .line 25
    iput p3, p0, Lorg/wikipedia/analytics/FeedConfigureFunnel;->source:I

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/FeedContentType;",
            ">;)V"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/analytics/Funnel;->getApp()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {}, Lorg/wikipedia/feed/FeedContentType;->values()[Lorg/wikipedia/feed/FeedContentType;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v8, v6, v4

    .line 37
    invoke-virtual {v8}, Lorg/wikipedia/feed/FeedContentType;->isEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 39
    :cond_0
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/feed/FeedContentType;

    .line 43
    invoke-virtual {v2}, Lorg/wikipedia/feed/FeedContentType;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "source"

    aput-object v2, p1, v4

    .line 45
    iget v2, p0, Lorg/wikipedia/analytics/FeedConfigureFunnel;->source:I

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, p1, v3

    const/4 v2, 0x2

    const-string v3, "feed_views"

    aput-object v3, p1, v2

    const/4 v2, 0x3

    .line 47
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getExploreFeedVisitCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    const/4 v2, 0x4

    const-string v3, "enabled_list"

    aput-object v3, p1, v2

    const/4 v2, 0x5

    .line 48
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->stringToListMapToJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    const/4 v1, 0x6

    const-string v2, "order_list"

    aput-object v2, p1, v1

    const/4 v1, 0x7

    .line 49
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->listToJSONString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const/16 v0, 0x8

    const-string v1, "languages"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    .line 50
    invoke-virtual {p0}, Lorg/wikipedia/analytics/Funnel;->getApp()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->listToJsonArrayString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 45
    invoke-virtual {p0, p1}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pause()V
    .locals 0

    .line 17
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->pause()V

    return-void
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume()V
    .locals 0

    .line 17
    invoke-super {p0}, Lorg/wikipedia/analytics/TimedFunnel;->resume()V

    return-void
.end method
