.class public Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$OnThisDayFeed;
.super Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;
.source "AggregatedFeedContentClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnThisDayFeed"
.end annotation


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;-><init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .line 40
    invoke-super {p0}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->cancel()V

    return-void
.end method

.method getCardFromResponse(Ljava/util/Map;Lorg/wikipedia/dataclient/WikiSite;ILjava/util/List;)V
    .locals 3
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

    .line 48
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

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/wikipedia/feed/FeedContentType;->ON_THIS_DAY:Lorg/wikipedia/feed/FeedContentType;

    .line 50
    invoke-virtual {v1}, Lorg/wikipedia/feed/FeedContentType;->getLangCodesDisabled()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;

    .line 52
    invoke-virtual {v1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->onthisday()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->onthisday()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    invoke-virtual {v1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->onthisday()Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-direct {v2, v1, v0, p3}, Lorg/wikipedia/feed/onthisday/OnThisDayCard;-><init>(Ljava/util/List;Lorg/wikipedia/dataclient/WikiSite;I)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    return-void
.end method
