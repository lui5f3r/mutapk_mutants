.class public Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$TrendingArticles;
.super Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;
.source "AggregatedFeedContentClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrendingArticles"
.end annotation


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;-><init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .line 100
    invoke-super {p0}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->cancel()V

    return-void
.end method

.method getCardFromResponse(Ljava/util/Map;Lorg/wikipedia/dataclient/WikiSite;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;",
            ">;",
            "Lorg/wikipedia/dataclient/WikiSite;",
            "I",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/model/Card;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 109
    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/wikipedia/feed/FeedContentType;->TRENDING_ARTICLES:Lorg/wikipedia/feed/FeedContentType;

    .line 110
    invoke-virtual {v0}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesDisabled()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;

    .line 112
    invoke-virtual {v0}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->mostRead()Lorg/wikipedia/feed/mostread/MostReadArticles;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Lorg/wikipedia/feed/mostread/MostReadListCard;

    invoke-virtual {v0}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->mostRead()Lorg/wikipedia/feed/mostread/MostReadArticles;

    move-result-object v0

    invoke-static {p3}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p3

    invoke-direct {v1, v0, p3}, Lorg/wikipedia/feed/mostread/MostReadListCard;-><init>(Lorg/wikipedia/feed/mostread/MostReadArticles;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    return-void
.end method
