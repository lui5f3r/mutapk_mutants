.class abstract Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;
.super Ljava/lang/Object;
.source "AggregatedFeedContentClient.java"

# interfaces
.implements Lorg/wikipedia/feed/dataclient/FeedClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseClient"
.end annotation


# instance fields
.field private age:I

.field private aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

.field private cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

.field private wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    return-void
.end method

.method static synthetic lambda$requestAggregated$0(Lorg/wikipedia/feed/model/UtcDate;Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    move-result-object p1

    invoke-virtual {p0}, Lorg/wikipedia/feed/model/UtcDate;->year()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/wikipedia/feed/model/UtcDate;->month()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/wikipedia/feed/model/UtcDate;->date()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, v1, p0}, Lorg/wikipedia/dataclient/RestService;->getAggregatedFeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method private requestAggregated()V
    .locals 4

    .line 178
    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    invoke-virtual {v0}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->cancel()V

    .line 179
    iget v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->age:I

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->getUtcRequestDateFor(I)Lorg/wikipedia/feed/model/UtcDate;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    invoke-static {v1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->access$200(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object v1

    invoke-static {}, Lorg/wikipedia/feed/FeedContentType;->getAggregatedLanguages()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$TECsyYYNxnKbfAX7Wy0WmOP-4c8;

    invoke-direct {v3, v0}, Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$TECsyYYNxnKbfAX7Wy0WmOP-4c8;-><init>(Lorg/wikipedia/feed/model/UtcDate;)V

    sget-object v0, Lorg/wikipedia/feed/aggregated/-$$Lambda$tL4z4xj-IAtt_A1pGt4xRuPzoq0;->INSTANCE:Lorg/wikipedia/feed/aggregated/-$$Lambda$tL4z4xj-IAtt_A1pGt4xRuPzoq0;

    .line 181
    invoke-virtual {v2, v3, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->toList()Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 183
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v2, Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$_Gy5gXLhz8DLWXQCCh1uk--9eAc;

    invoke-direct {v2, p0}, Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$_Gy5gXLhz8DLWXQCCh1uk--9eAc;-><init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;)V

    new-instance v3, Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$Eh1oSYJAW_16kR01cDfcMhoRNfE;

    invoke-direct {v3, p0}, Lorg/wikipedia/feed/aggregated/-$$Lambda$AggregatedFeedContentClient$BaseClient$Eh1oSYJAW_16kR01cDfcMhoRNfE;-><init>(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;)V

    .line 184
    invoke-virtual {v0, v2, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    .line 180
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method abstract getCardFromResponse(Ljava/util/Map;Lorg/wikipedia/dataclient/WikiSite;ILjava/util/List;)V
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
.end method

.method public synthetic lambda$requestAggregated$1$AggregatedFeedContentClient$BaseClient(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 187
    iget-object v2, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;

    if-nez v2, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v3, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    invoke-static {v3}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->access$100(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)Ljava/util/Map;

    move-result-object v3

    iget-object v1, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    iget v2, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->age:I

    invoke-static {v1, v2}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->access$002(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;I)I

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    invoke-static {p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->access$100(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 195
    iget-object p1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    invoke-static {p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->access$100(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    iget v2, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->age:I

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->getCardFromResponse(Ljava/util/Map;Lorg/wikipedia/dataclient/WikiSite;ILjava/util/List;)V

    .line 197
    :cond_2
    iget-object p1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    if-eqz p1, :cond_3

    .line 198
    invoke-static {p1, v0}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$requestAggregated$2$AggregatedFeedContentClient$BaseClient(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 201
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->v(Ljava/lang/Throwable;)V

    .line 202
    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0, p1}, Lorg/wikipedia/feed/dataclient/FeedClient$Callback;->error(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 1

    .line 160
    iput-object p4, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->cb:Lorg/wikipedia/feed/dataclient/FeedClient$Callback;

    .line 161
    iput p3, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->age:I

    .line 162
    iput-object p2, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 163
    iget-object p1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    invoke-static {p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->access$000(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)I

    move-result p1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    .line 164
    invoke-static {p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->access$100(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v0, p0, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->aggregatedClient:Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;

    invoke-static {v0}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;->access$100(Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p1}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->getCardFromResponse(Ljava/util/Map;Lorg/wikipedia/dataclient/WikiSite;ILjava/util/List;)V

    .line 167
    invoke-static {p4, p1}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/feed/aggregated/AggregatedFeedContentClient$BaseClient;->requestAggregated()V

    :goto_0
    return-void
.end method
