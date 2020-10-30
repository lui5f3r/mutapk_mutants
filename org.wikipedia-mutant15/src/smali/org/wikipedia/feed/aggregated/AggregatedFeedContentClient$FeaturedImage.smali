.class public Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$FeaturedImage;
.super Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;
.source "AggregatedFeedContentClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeaturedImage"
.end annotation


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;-><init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .line 120
    invoke-super {p0}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->cancel()V

    return-void
.end method

.method getCardFromResponse(Ljava/util/Map;Lorg/wikipedia/dataclient/WikiSite;ILjava/util/List;)V
    .locals 1
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

    .line 128
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;

    .line 130
    invoke-virtual {p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->potd()Lorg/wikipedia/feed/image/FeaturedImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lorg/wikipedia/feed/image/FeaturedImageCard;

    invoke-virtual {p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;->potd()Lorg/wikipedia/feed/image/FeaturedImage;

    move-result-object p1

    invoke-direct {v0, p1, p3, p2}, Lorg/wikipedia/feed/image/FeaturedImageCard;-><init>(Lorg/wikipedia/feed/image/FeaturedImage;ILorg/wikipedia/dataclient/WikiSite;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V

    return-void
.end method
